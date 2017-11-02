require 'rails_helper'

describe "Areas Module" do

  describe "> Autocomplete Funcionality" do
    before(:each) do
      create(:country, id: 59)
      create(:city)
    end

    it 'successfully autocompletes a query for city' do
      get "/v1/search/Horsens"
      expect(json.length > 0).to be true
    end

    it 'successfully autocompletes a query for country' do
      get "/v1/search/Denmark"
      expect(json.length > 0).to be true
    end

    it 'is optimised to display a maximum of 20 results' do
      30.times{ |i| create(:country) }

      get "/v1/search/Denmark"
      expect(json.length).to eq(20)
    end
    
    it 'returns empty if nothing matches' do
      get "/v1/search/impossible_query"
      expect(json.length == 0).to be true
    end
    
    it 'returns correct area format for country' do
      country = create(:country, name: "NewCountry")
      expected_response = JSON.parse(AreaSerializer.new(country).to_json)
      expected_response["parent_area"] = nil

      get "/v1/search/#{country.name}"
      expect(json[0]).to eq(expected_response)
    end
        
    it 'returns correct area format for city' do

      country = create(:country, id: 54, name: "MyCountry")
      city = create(:city, name: "NewCity", country_id: 54)

      expected_response = JSON.parse(AreaSerializer.new(city).to_json)
      expected_response["parent_area"] = country.name

      get "/v1/search/#{city.name}"
      expect(json[0]).to eq(expected_response)
    end
  end
  
  describe "> Areas [GET]" do
    it "> successfully gets country if id is valid" do
      country = create(:country)
      get "/v1/areas/country/#{country.id}"
      expect(json).to eq(JSON.parse(CountrySerializer.new(country).to_json))
    end

    it "> successfully gets city if id is valid" do
      country = create(:country)
      city = create(:city, country_id: country.id)
      get "/v1/areas/city/#{city.id}"
      expect(json).to eq(JSON.parse(CitySerializer.new(city).to_json))
    end

    it "> fails getting country if id is invalid" do
      get "/v1/areas/country/-1"
      expect(response.status).to eq(404)
    end

    it "> fails getting city if id is invalid" do
      get "/v1/areas/city/-1"
      expect(response.status).to eq(404)
    end
  end

end