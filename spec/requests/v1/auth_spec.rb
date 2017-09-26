require 'rails_helper'

describe "Authorization API" do
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
end