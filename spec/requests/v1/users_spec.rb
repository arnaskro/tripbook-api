require 'rails_helper'

describe "Users Module" do

  describe "| [GET] users |" do
    before(:each) do
      30.times { |i| create(:user, email: "email#{i}@test.com") }
    end

    it 'should be possible to get a list of users with pagination.' do
      get "/v1/users?page=1"
      expect(json["users"].length).to eq(20)
      expect(json["page"]).to eq("1")
      expect(json["total"]).to eq(30)

      get "/v1/users?page=2"
      expect(json["users"].length).to eq(10)
      expect(json["page"]).to eq("2")
    end

    it 'should be possible to get a list of users without using pagination.' do
      get "/v1/users"
      expect(json["users"].length).to eq(20)
      expect(json["page"]).to eq("1")
      expect(json["total"]).to eq(30)
    end
  end

  it 'should be possible to get a user with a correct id.' do
    user = create(:user)
    get "/v1/users/#{user.id}"
    expect(response.status).to eq(200)
    expect(json["id"]).to eq(user.id)
  end

  it 'should be possible to update user details by providing correct details. If you are logged in as that user' do
    user = create(:user, name: "Bob", email: "bob@tripbook.dk")
    patch "/v1/users/#{user.id}", params: { user: { name: "Tom" } }, headers: user.create_new_auth_token
    expect(response.status).to eq(200)
    expect(json["name"]).to eq("Tom")
  end

  it 'should not be possible to update user details if you are NOT logged in as that user' do
    user1 = create(:user, name: "Bob", email: "bob@tripbook.dk")
    user2 = create(:user)
    patch "/v1/users/#{user1.id}", params: { user: { name: "Tom" } }, headers: user2.create_new_auth_token
    expect(response.status).to eq(401)
  end

  it 'should be possible to make a user inactive by calling the DELETE function when you are logged in as that user' do
    user = create(:user, name: "Bob", email: "bob@tripbook.dk")
    delete "/v1/users/#{user.id}", headers: user.create_new_auth_token
    expect(response.status).to eq(200)
    expect(User.find(user.id).active).to be false
  end

  it 'should NOT be possible to make a user inactive by calling the DELETE function when you are NOT logged in as that user' do
    user = create(:user, name: "Bob", email: "bob@tripbook.dk")
    delete "/v1/users/#{user.id}", headers: create(:user).create_new_auth_token
    expect(response.status).to eq(401)
    expect(User.find(user.id).active).to be true
  end
  
  it 'should be possible to get a list of users by providing a valid query that is included in name' do
    user1 = create(:user, name: "Roberto")

    get "/v1/users/search/bert"
    expect(json["users"].length > 0).to be true
    get "/v1/users/search/Robert"
    expect(json["users"].length > 0).to be true
    get "/v1/users/search/Roberto"
    expect(json["users"].length > 0).to be true
  end


  it 'should be possible to get a list of users by providing a valid query that is included in lastname' do
    user2 = create(:user, lastname: "Macaroni", email: "macar@tripbook.dk")

    get "/v1/users/search/car"
    expect(json["users"].length > 0).to be true
    get "/v1/users/search/Maca"
    expect(json["users"].length > 0).to be true
    get "/v1/users/search/Macaroni"
    expect(json["users"].length > 0).to be true
  end


  it 'should be possible to get a list of users by providing a valid query that is included in email' do
    user3 = create(:user, email: "daniel@tripbook.dk")

    get "/v1/users/search/daniel"
    expect(json["users"].length > 0).to be true
    get "/v1/users/search/tripbook"
    expect(json["users"].length > 0).to be true
    get "/v1/users/search/daniel@tripbook.dk"
    expect(json["users"].length > 0).to be true
  end
      
end