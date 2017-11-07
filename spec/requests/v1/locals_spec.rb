require 'rails_helper'

describe 'Locals Module' do

  it "should be possible to create a local if it doesn't exist for a user who wants to become one and has VALID data"
  it "should NOT be possible to create a local if it doesn't exist for a user who wants to become one and has INVALID data"
  it "should be possible to get a list of locals for a certain area"
  it "should NOT create a second local model if the user already has one but instead set the old one to active"
  it "should be possible to get a list of locals"
  it "should be possible to paginate a list of locals"
  it "should be possible to get a local profile page with valid id"
  it "should NOT be possible to get a local profile page without a valid id"
  it "should be possible to update local profile details when the user is signed for that local person"
  it "should NOT be possible to update local profile details when the user is NOT signed for that local person"
  it "should set the local model active field to false when the user who is signed in as the local and makes a DELETE request"
  it "should NOT set the local model active field to false on the DELETE request when the user who is signed it is not the user who is the local user"
  it "should be possible to search for locals by name, lastname and email as a query"
  it "should not display the local in the locals list when it is set to be inactive"
  it "it should display in the users models that he is a local if he has that model"
end