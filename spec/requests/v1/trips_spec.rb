require 'rails_helper'

describe 'Trips & Bookings Module' do
  before(:each) do
    @country = create(:country)
    @city = create(:city, country: @country)
    @user = create(:user)
    @user1 = create(:user)
    @user2 = create(:user)
    @local = create(:local, user: @user1, city: @city)
  end

  describe 'User creates a trip request for a local' do
    before(:each) do
      @parameters = {
        booking: {
          from_date: '2018-05-07',
          to_date: '2018-05-09',
          number_of_people: '4'
        },
        trip: {
          title: "2 day trip in #{@city.name}",
          description: "Our group wants to meet new people",
          local_id: @local.id
        }
      }
    end

    it 'creates a trip object' do
      post "/v1/bookings", params: @parameters, headers: @user.create_new_auth_token 

      expect(response.status).to eq(201)
      expect(json["trip"]["id"]).not_to be_nil
      expect(json["trip"]["url"]).not_to be_nil
      trip = Trip.find(json["trip"]["id"])
      expect(trip).not_to be_nil
      expect(trip.trip_type).to eq(1)
      expect(trip.title).to eq(@parameters["trip"]["title"])
      expect(trip.description).to eq(@parameters["trip"]["description"])
      expect(trip.number_of_people).to eq(@parameters["booking"]["number_of_people"])
      expect(trip.local_id).to eq(@local.id)
      expect(trip.city_id).to eq(@local.city_id)
      expect(trip.bookings.size).to eq(1)
    end
    
    it 'creates a booking object' do
      post "/v1/bookings", params: @parameters, headers: @user.create_new_auth_token 

      expect(response.status).to eq(201)
      expect(json["booking"]["id"]).not_to be_nil
      booking = Booking.find(json["booking"]["id"])
      expect(booking).not_to be_nil
      expect(booking.trip).not_to be_nil
      expect(booking.local).not_to be_nil
      expect(booking.local.city_id).to eq(@city.id)
      expect(booking.trip.city_id).to eq(@local.city_id)
      expect(booking.number_of_people).to eq(@parameters["booking"]["number_of_people"])
      expect(booking.status).to eq(1) #Pending
    end
  end

  describe 'User creates a trip request for a city' do
    before(:each) do
      @parameters = {
        booking: {
          from_date: '2018-05-07',
          to_date: '2018-05-09',
          number_of_people: '4'
        },
        trip: {
          title: "2 day trip in #{@city.name}",
          description: "Our group wants to meet new people",
          city_id: @city.id
        }
      }
    end

    it 'creates a trip object' do
      post "/v1/bookings", params: @parameters, headers: @user.create_new_auth_token 

      expect(response.status).to eq(201)
      expect(json["trip"]["id"]).not_to be_nil
      expect(json["trip"]["url"]).not_to be_nil
      trip = Trip.find(json["trip"]["id"])
      expect(trip).not_to be_nil
      expect(trip.trip_type).to eq(1)
      expect(trip.title).to eq(@parameters["trip"]["title"])
      expect(trip.description).to eq(@parameters["trip"]["description"])
      expect(trip.number_of_people).to eq(@parameters["booking"]["number_of_people"])
      expect(trip.city_id).to eq(@city.id)
      expect(trip.bookings.size).to eq(1)
    end
    
    it 'creates a booking object' do
      post "/v1/bookings", params: @parameters, headers: @user.create_new_auth_token 

      expect(response.status).to eq(201)
      expect(json["booking"]["id"]).not_to be_nil
      booking = Booking.find(json["booking"]["id"])
      expect(booking).not_to be_nil
      expect(booking.trip).not_to be_nil
      expect(booking.local).to be_nil
      expect(booking.trip.city_id).to eq(@city.id)
      expect(booking.number_of_people).to eq(@parameters["booking"]["number_of_people"])
      expect(booking.status).to eq(1) #Pending
    end
  end
  
  describe 'Local creates a trip offer for a city' do
    before(:each) do
      @parameters = {
        trip: {
          number_of_people: 5,
          title: "Random title",
          description: "A Random description that is or at least should be longer than around 100 characters. Some additional text to make the text even longer."
        }
      }
    end

    it 'creates a trip object' do
      post "/v1/trips", params: @parameters, headers: @local.user.create_new_auth_token 

      expect(response.status).to eq(201)
      expect(json["trip"]["id"]).not_to be_nil
      expect(json["trip"]["url"]).not_to be_nil

      trip = Trip.find(json["trip"]["id"])
      expect(trip.bookings.size).to eq(0)
      expect(trip.trip_type).to eq(2)
      expect(trip.user).to eq(@local.user)
    end

    it 'fails to create a trip object if not local' do
      post "/v1/trips", params: @parameters, headers: create(:user).create_new_auth_token 
      expect(response.status).to eq(401)
    end
  end

  describe 'User books a trip' do
    it 'creates a booking object' do
      trip = Trip.create(
        number_of_people: 5,
        title: "Random title",
        description: "A Random description that is or at least should be longer than around 100 characters. Some additional text to make the text even longer.",
        user: @local.user,
        from_date: Date.today - 1.month,
        to_date: Date.today + 2.months,
        trip_type: 2,
        city: @local.city)

      expect(trip).not_to be_nil
      
      post '/v1/bookings', params: {
        booking: {
          trip_id: trip.id,
          number_of_people: 3,
          from_date: Date.today + 2.days,
          to_date: Date.today + 10.days
        }
      }, headers: @user.create_new_auth_token 

      expect(response.status).to eq(201)
      expect(json["booking"]["id"]).not_to be_nil
      booking = Booking.find(json["booking"]["id"])
      expect(booking).not_to be_nil
      expect(booking.trip).not_to be_nil
      expect(booking.local).not_to be_nil
      expect(booking.trip.city_id).to eq(@local.city_id)
      expect(booking.number_of_people).to eq(3)
      expect(booking.status).to eq(1) #Pending
    end
  end

  describe 'Local accepts booking' do
    it 'saves correct status for the local and the user' do
      trip = Trip.create(
        number_of_people: 5,
        title: "Random title",
        description: "A Random description that is or at least should be longer than around 100 characters. Some additional text to make the text even longer.",
        user: @local.user,
        from_date: Date.today - 1.month,
        to_date: Date.today + 2.months,
        trip_type: 2,
        city: @local.city)

      booking = Booking.create(
        trip: trip,
        number_of_people: 3,
        user: @user,
        local: @local,
        status: 1,
        from_date: Date.today + 2.days,
        to_date: Date.today + 10.days
      )
      
      post "/v1/bookings/#{booking.id}/accept", headers: @local.user.create_new_auth_token
      
      # Expectations
      expect(response.status).to eq(200)
      expect(Booking.find(booking.id).status).to eq(2)
    end
  end

end