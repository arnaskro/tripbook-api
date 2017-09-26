require 'rails_helper'

describe "Auth API" do
  it 'signs in successfully when data is valid' do
    # create user
    user = create(:user)
    # make the request
    post "/v1/auth/sign_in", params: { email: user.email, password: user.password }
    # test for the 200 status-code
    expect(response).to be_success
    # check if return data 
    expect(json["data"]["email"]).to eq(user.email) 
    # check if returns auth token
    expect(response.headers["access-token"]).not_to be_empty
  end

  it 'does not sign in when data is invalid' do
    # create user
    user = create(:user)
    # make the request
    post "/v1/auth/sign_in", params: { email: user.email, password: "123" }
    # test for the 401 status-code
    expect(response).to be_unauthorized
    # check if has a message
    expect(json["errors"]).to have_at_least(1).items
  end

  it 'registers an account successfully with valid data' do
    email = "abc@new.com"
    # make the request
    post "/v1/auth/", params: { email: email, password: "123123", name: "Bob" }
    # Unprocessable entity
    expect(response).to be_success
    expect(json["data"]["id"]).to be_instance_of(Integer)
    expect(json["data"]["email"]).to eq("abc@new.com")
  end

  it 'does not register an account when data is missing' do
    # make the request
    post "/v1/auth/", params: {}
    # Unprocessable entity
    expect(response.status).to eq(422)
    expect(json["errors"]).to include("Please submit proper sign up data in request body.")
  end

  it 'does not register an account when an email already exists' do
    user = create(:user)

    # make the request
    post "/v1/auth/", params: { email: user.email, password: "something new", name: "Tom" }
    
    # Unprocessable entity
    expect(response.status).to eq(422)

    expect(json["errors"]["full_messages"]).to include("Email has already been taken")
    
  end

  it 'signs out successfully' do
    # Sign in first
      # create user
      user = create(:user)
      # make the request
      post "/v1/auth/sign_in", params: { email: user.email, password: user.password }

    # Try to sign out
    delete '/v1/auth/sign_out', headers: { 
      'uid': response.headers["uid"],
      'access-token': response.headers["access-token"],
      'client': response.headers["client"] 
    }

    expect(response).to be_success
  end
end