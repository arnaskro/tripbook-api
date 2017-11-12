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
      get "/v1/reviews/local/#{@local.id}"
      expect(json["reviews"].length > 0).to be true
    end

    it '[GET] get reviews (page: 2)' do
      30.times { |i| create(:review_local, user: create(:user), text:"message#{i}", object: @local) }
      get "/v1/reviews/local/#{@local.id}?page=2"
      expect(json["page"]).to eq(2)
      expect(json["reviews"].length > 0).to be true
    end

    it '[POST] create review with valid parameters' do
      message = "non_existant"
      stars = 4
      # Make sure it doesnt exist yet
      expect(Review.where(text: message).size).to eq(0)

      post "/v1/reviews/local/#{@local.id}", params: { review: { text: message, stars: stars } }, headers: @user.create_new_auth_token

      expect(response.status).to eq(201)
      expect(json['text']).to eq(message)
      expect(json['stars']).to eq(stars)
      expect(Review.where(text: message).size).to eq(1)
    end

    it '[POST] create review without valid parameters' do
      expect{ post "/v1/reviews/local/#{@local.id}", headers: @user.create_new_auth_token }.to raise_error  ActionController::ParameterMissing
    end

    it '[DELETE] review' do
      expect(Review.where(id: @local_review.id).first).to be
      delete "/v1/reviews/#{@local_review.id}", headers: @user.create_new_auth_token
      expect(response.status).to eq(200)
      expect(Review.where(id: @local_review.id).first).to be_nil
    end
  end
  
  describe "(object_type: trip)" do
    it '[GET] get reviews' do
      get "/v1/reviews/trip/#{@trip.id}"
      expect(json["reviews"].length > 0).to be true
    end

    it '[GET] get reviews (page: 2)' do
      30.times { |i| create(:review_trip, user: create(:user), text:"message#{i}", object: @trip) }
      get "/v1/reviews/trip/#{@trip.id}?page=2"
      expect(json["page"]).to eq(2)
      expect(json["reviews"].length > 0).to be true
    end

    it '[POST] create review with valid parameters' do
      message = "non_existant"
      stars = 4
      # Make sure it doesnt exist yet
      expect(Review.where(text: message).size).to eq(0)

      post "/v1/reviews/trip/#{@trip.id}", params: { review: { text: message, stars: stars } }, headers: @user.create_new_auth_token

      expect(response.status).to eq(201)
      expect(json['text']).to eq(message)
      expect(json['stars']).to eq(stars)
      expect(Review.where(text: message).size).to eq(1)
    end

    it '[POST] create review without valid parameters' do
      expect{ post "/v1/reviews/trip/#{@local.id}", headers: @user.create_new_auth_token }.to raise_error  ActionController::ParameterMissing
    end

    it '[DELETE] review' do
      expect(Review.where(id: @trip_review.id).first).to be
      delete "/v1/reviews/#{@trip_review.id}", headers: @user.create_new_auth_token
      expect(response.status).to eq(200)
      expect(Review.where(id: @trip_review.id).first).to be_nil
    end
  end

end