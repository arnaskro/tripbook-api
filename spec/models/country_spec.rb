require 'rails_helper'

RSpec.describe Country, type: :model do
  it "is valid with valid attributes" do
    expect(Country.new(name: "United Kingdom", key: "GB")).to be_valid
  end

  it "is not valid without a name" do
    expect(Country.new(key: "GB")).to be_invalid
  end

  it "is not valid without a key" do
    expect(Country.new(name: "United Kingdom")).to be_invalid
  end
  
  it "is searchable by case insenstive query" do
    create(:country)
    expect(Country.search("enmar").length > 0).to be true
  end
end
