require 'rails_helper'

describe 'Locals Module' do

  describe '> [GET] locals >' do
    before(:each) do
      @country1 = create(:country)
      @city1 = create(:city, country: @country1)
      @city2 = create(:city, country: @country1)

      10.times do |i|
        user = create(:user, name:"name#{i}", email:"email#{i}@demo.dk")
        create(:local, user: user, country_id: @country1.id, city_id: @city1.id)
      end
      10.times do |i|
        user = create(:user, name:"name#{i+10}", email:"email#{i+10}@demo.dk")
        create(:local, user: user, country_id: @country1.id, city_id: @city2.id)
      end
      10.times do |i|
        user = create(:user, name:"name#{i+20}", email:"email#{i+20}@demo.dk")
        create(:local, user: user, country_id: @country1.id, city_id: @city1.id)
      end
    end
    
    it "should be possible to get a list of locals" do
      get '/v1/locals'
      expect(json["locals"].length > 0).to be true
      expect(json["locals"][0]['user']['name'] != nil).to be true
      expect(json["locals"][0]['id'] != nil).to be true
    end

    it "should be possible to get a list of locals for a certain city" do
      get "/v1/locals?city_id=#{@city1.id}"
      expect(json["locals"].length > 0).to be true
      expect(json["total"]).to eq(20)
    end
  
    it "should be possible to get a list of locals for a certain country" do
      get "/v1/locals?country_id=#{@country1.id}"
      expect(json["locals"].length > 0).to be true
      expect(json["total"]).to eq(30)
    end  

    it "should be possible to paginate a list of locals" do

    end

    it "should not display the local in the locals list when it is set to be inactive" do

    end
  end



  it "should be possible to create a local if it doesn't exist for a user who wants to become one and has VALID data"
  it "should NOT be possible to create a local if it doesn't exist for a user who wants to become one and has INVALID data"

  it "should NOT create a second local model if the user already has one but instead set the old one to active"
  it "should be possible to get a local profile page with valid id"
  it "should NOT be possible to get a local profile page without a valid id"
  it "should be possible to update local profile details when the user is signed for that local person"
  it "should NOT be possible to update local profile details when the user is NOT signed for that local person"
  it "should set the local model active field to false when the user who is signed in as the local and makes a DELETE request"
  it "should NOT set the local model active field to false on the DELETE request when the user who is signed it is not the user who is the local user"
  it "should be possible to search for locals by name, lastname and email as a query"
  it "it should display in the users models that he is a local if he has that model"
end