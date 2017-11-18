require 'rails_helper'

describe "Areas Module" do

  describe "> Autocomplete Funcionality" do
    before(:each) do
      create(:country, id: 59)
      create(:city)
    end

    it 'successfully autocompletes a query for city' do
      get "/v1/areas/Horsens"
      expect(json.length > 0).to be true
    end

    it 'successfully autocompletes a query for country' do
      get "/v1/areas/Denmark"
      expect(json.length > 0).to be true
    end

    it 'is optimised to display a maximum of 20 results' do
      30.times{ |i| create(:country) }

      get "/v1/areas/Denmark"
      expect(json.length).to eq(20)
    end
    
    it 'returns empty if nothing matches' do
      get "/v1/areas/impossible_query"
      expect(json.length == 0).to be true
    end
    
    it 'returns correct area format for country' do
      country = create(:country, name: "NewCountry")
      expected_response = JSON.parse(AreaSerializer.new(country).to_json)
      expected_response["parent_area"] = nil

      get "/v1/areas/#{country.name}"
      expect(json[0]).to eq(expected_response)
    end
        
    it 'returns correct area format for city' do

      country = create(:country, id: 54, name: "MyCountry")
      city = create(:city, name: "NewCity", country_id: 54)

      expected_response = JSON.parse(AreaSerializer.new(city).to_json)
      expected_response["parent_area"] = country.name

      get "/v1/areas/#{city.name}"
      expect(json[0]).to eq(expected_response)
    end

    it "returns only cities when we specify a parameter 'only' as 'cities'" do
      30.times{ |i| 
        c = create(:country, name: "common")
        5.times{ |i| 
          create(:city, name: "common", country_id: c.id)
        }
      }

      get "/v1/areas/common", params: { only: "cities" }
      json.each do |area|
        expect(area["type"]).to eq("city")
      end
    end

    it "returns only countries when we specify a parameter 'only' as 'countries'" do
      30.times{ |i| 
        c = create(:country, name: "common")
        5.times{ |i| 
          create(:city, name: "common", country_id: c.id)
        }
      }

      get "/v1/areas/common", params: { only: "countries" }
      json.each do |area|
        expect(area["type"]).to eq("country")
      end
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