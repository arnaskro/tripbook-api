require 'rails_helper'

describe 'Locals Module' do
  before(:each) do
    @country1 = create(:country)
    @city1 = create(:city, country: @country1)
    @city2 = create(:city, country: @country1)
  end
  
  describe '> [GET] locals >' do
    before(:each) do
      10.times do |i|
        user = create(:user, name:"name#{i}", email:"email#{i}@demo.dk")
        create(:local, user: user, city_id: @city1.id)
      end
      10.times do |i|
        user = create(:user, name:"name#{i+10}", email:"email#{i+10}@demo.dk")
        create(:local, user: user, city_id: @city2.id)
      end
      10.times do |i|
        user = create(:user, name:"name#{i+20}", email:"email#{i+20}@demo.dk")
        create(:local, user: user, city_id: @city1.id)
      end
    end
    
    it "should be possible to get a list of locals" do
      get '/v1/locals'
      expect(json["locals"].length > 0).to be true
      expect(json["locals"][0]['user']['name'] != nil).to be true
      expect(json["locals"][0]['id'] != nil).to be true
    end
    
    it "locals list should only include the available locals when 'available' params is set to true" do
      local = create(:local, user: create(:user, name:"notavailable1", email:"notavailable1@demo.dk"), city_id: @city1.id, available: false)
      local = create(:local, user: create(:user, name:"available1", email:"available1@demo.dk"), city_id: @city1.id, available: true)
      get '/v1/locals', params: { available: true }
      expect(json["total"]).to eq(Local.where(available: true).count)
    end
        
    it "locals list should only return all locals when 'available' param is not set"  do
      local = create(:local, user: create(:user, name:"notavailable1", email:"notavailable1@demo.dk"), city_id: @city1.id, available: false)
      local = create(:local, user: create(:user, name:"available1", email:"available1@demo.dk"), city_id: @city1.id, available: true)
      get '/v1/locals'
      expect(json["total"]).to eq(Local.count)
    end

    it "should be possible to get a list of locals for a certain city" do
      get "/v1/locals?city_id=#{@city1.id}"
      expect(json["locals"].length > 0).to be true
      expect(json["total"]).to eq(20)
    end

    it "should be possible to get a list of locals for a certain country" do
      get "/v1/locals?country_id=#{@country1.id}"
      expect(json["locals"].length > 0).to be true
      expect(json["total"]).to eq(20)
    end
  
    it "should be possible to paginate a list of locals" do
      get "/v1/locals"
      expect(json["total"]).to eq(30)
      expect(json["page"]).to eq("1")
      expect(json["locals"].length).to eq(20)

      get "/v1/locals?page=2"
      expect(json["page"]).to eq("2")
      expect(json["locals"].length).to eq(10)
    end

    it "should not display the local in the locals list when it is set to be inactive" do
      10.times do |i|
        user = create(:user, name:"new_name#{i}", email:"name#{i}@demo.dk")
        create(:local, user: user, city_id: @city1.id, active: false)
      end

      get "/v1/locals"
      expect(json["total"]).to eq(30)
    end

    it "should be possible to search for locals by name as a query" do
      get '/v1/locals?query=name13'
      expect(json["total"]).to eq(1)
    end

    it "should be possible to search for locals by email as a query" do
      get '/v1/locals?query=email15'
      expect(json["total"]).to eq(1)
    end
  end

  describe "> [POST] create local >" do
    before(:each) do
      @user = create(:user)
    end

    it "does not allow to create a local if the user is not signed it" do
      post "/v1/locals"
      # test for the 401 status-code
      expect(response).to be_unauthorized
    end

    it "create local if it doesn't exist for a user who wants to become one and has VALID data provided" do
      post '/v1/locals', params: { local: { city_id: @city1.id } }, headers: @user.create_new_auth_token
      expect(response.status).to eq(201)
      expect(@user.local.nil?).to be false
    end

    it "does not create local if it doesn't exist for a user who wants to become one and has INVALID data provided" do    
      post '/v1/locals', params: { local: { description: "test" } }, headers: @user.create_new_auth_token
      expect(response.status).to eq(422)
      expect(@user.local.nil?).to be true
    end

    it "updates the local to be active if it was inactive and was already created" do
      create(:local, user_id: @user.id, city_id: @city1.id, active:false)
      post '/v1/locals', headers: @user.create_new_auth_token
      expect(response.status).to eq(200)
      expect(@user.local.nil?).to be false
      expect(@user.local.active).to be true
    end
  
  end

  it "[GET] should be possible to get a local profile page with valid id" do
    local = create(:local, id: 100, user: create(:user), city_id: @city1.id)
    get "/v1/locals/#{local.id}"
    expect(json["id"]).to eq(local.id)
  end

  it "[PUT] should be possible to update local profile details" do
    user = create(:user)
    local = create(:local, user: user, city_id: @city1.id)
    put "/v1/locals/#{local.id}", params: { local: { description: "abc" } }, headers: user.create_new_auth_token
    expect(response.status).to eq 200
    expect(json["description"]).to eq("abc")
  end
  
  it "[DELETE] should set the local model active field to false when the user who is signed in as the local and makes a DELETE request" do
    user = create(:user)
    local = create(:local, user: user, city_id: @city1.id, active: true)
    delete "/v1/locals/#{local.id}", headers: user.create_new_auth_token
    expect(response.status).to eq 200
    expect(Local.find(local.id).active).to be false
  end

end