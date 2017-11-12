require 'rails_helper'

describe "Reviews Module" do
  before(:each) do
    @country = create(:country)
    @city = create(:city, country: @country)
    @user = create(:user)

    @local = create(:local, user: create(:user), country: @country, city: @city)
    @local_review = create(:review_local, user: @user, object: @local)

    @trip = create(:trip)
    @trip_review = create(:review_trip, user: @user, object: @trip)
  end

  describe "(object_type: local)" do
    it '[GET] get reviews' do
      get "/v1/locals/#{@local.id}/reviews"
      expect(json["reviews"].length > 0).to be true
    end

    it '[GET] get reviews (page: 2)' do
      30.times { |i| create(:review_local, user: create(:user), text:"message#{i}", object: @local) }
      get "/v1/locals/#{@local.id}/reviews?page=2"
      expect(json["page"]).to eq(2)
      expect(json["reviews"].length > 0).to be true
    end

    it '[POST] create review with valid parameters' do
      message = "non_existant"
      stars = 4
      # Make sure it doesnt exist yet
      expect(Review.where(text: message).size).to eq(0)

      post "/v1/locals/#{@local.id}/reviews", params: { text: message, stars: stars }, headers: @user.create_new_auth_token

      expect(response.status).to eq(201)
      expect(json['text']).to eq(message)
      expect(json['stars']).to eq(stars)
      expect(Review.where(text: message).size).to eq(1)
    end

    it '[POST] create review without valid parameters' do
      message = "non_existant"
      stars = 4
      # Make sure it doesnt exist yet
      expect(Review.where(text: message).size).to eq(0)

      post "/v1/locals/#{@local.id}/reviews", params: { }, headers: @user.create_new_auth_token

      expect(response.status).to eq(400)
      # Make sure it still doesnt exist yet
      expect(Review.where(text: message).size).to eq(0)
    end

    it '[DELETE] review' do
      delete "/v1/locals/#{@local.id}/reviews/#{@local_review.id}", headers: @user.create_new_auth_token
      expect(response.status).to eq(200)
    end
  end
  
  describe "(object_type: trip)" do
    it '[GET] get reviews' do
      get "/v1/trips/#{@trip.id}/reviews"
      expect(json["reviews"].length > 0).to be true
    end

    it '[GET] get reviews (page: 2)' do
      30.times { |i| create(:review_trip, user: create(:user), text:"message#{i}", object: @trip) }
      get "/v1/trips/#{@trip.id}/reviews?page=2"
      expect(json["page"]).to eq(2)
      expect(json["reviews"].length > 0).to be true
    end

    it '[POST] create review with valid parameters' do
      message = "non_existant"
      stars = 4
      # Make sure it doesnt exist yet
      expect(Review.where(text: message).size).to eq(0)

      post "/v1/trips/#{@trip.id}/reviews", params: { text: message, stars: stars }, headers: @user.create_new_auth_token

      expect(response.status).to eq(201)
      expect(json['text']).to eq(message)
      expect(json['stars']).to eq(stars)
      expect(Review.where(text: message).size).to eq(1)
    end

    it '[POST] create review without valid parameters' do
      message = "non_existant"
      stars = 4
      # Make sure it doesnt exist yet
      expect(Review.where(text: message).size).to eq(0)

      post "/v1/trips/#{@trip.id}/reviews", params: { }, headers: @user.create_new_auth_token

      expect(response.status).to eq(400)
      # Make sure it still doesnt exist yet
      expect(Review.where(text: message).size).to eq(0)
    end

    it '[DELETE] review' do
      delete "/v1/trips/#{@trip.id}/reviews/#{@trip_review.id}", headers: @user.create_new_auth_token
      expect(response.status).to eq(200)
    end
  end

end