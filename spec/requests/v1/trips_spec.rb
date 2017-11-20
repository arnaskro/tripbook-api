require 'rails_helper'

describe 'Trips & Bookings Module' do
  before(:each) do
    country = create(:country)
    city = create(:city, country: country)
    user1 = create(:user)
    user2 = create(:user)
    local = create(:local, user: user1, city: city)
  end

  describe 'User creates a trip request for a local' do
    it 'creates a trip object' do

    end
    
    it 'creates a booking object'
  end

  describe 'User creates a trip request for a city' do
    it 'creates a trip object'
    it 'creates a booking object'
  end
  
  describe 'Local creates a trip offer for a city' do
    it 'creates a trip object'
  end

  describe 'User books a trip' do
    it 'creates a booking object'
  end

  describe 'Local accepts booking' do
    it 'saves correct status for the local and the user'
  end

end