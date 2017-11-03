require 'rails_helper'

RSpec.describe City, type: :model do
  it "is valid with valid attributes" do
    expect(City.new(name: "Horsens", country: create(:country), latitude: 55.89, longitude: 9.87)).to be_valid
  end

  it "is invalid without name" do
    expect(City.new(country: create(:country), latitude: 55.89, longitude: 9.87)).to be_invalid
  end

  it "is invalid without country" do
    expect(City.new(name: "Horsens", latitude: 55.89, longitude: 9.87)).to be_invalid
  end
  
  it "is searchable by case insenstive query" do
    create(:country, id: 59)
    create(:city)
    expect(City.search("hor", 20).length > 0).to be true
  end

end
