require 'rails_helper'

describe "Reviews Module" do
  before(:each) do
    create(:review_local)
    create(:review_trip)
  end

  describe "(object_type: local)" do
    it '[GET] reviews'

    end

    it '[GET] reviews (page: 2)'
    it '[POST] review with valid parameters'
    it '[POST] review without valid parameters'
    it '[DELETE] review'
  end
  
  describe "(object_type: trip)" do
    it '[GET] reviews'
    it '[GET] reviews (page: 2)'
    it '[POST] review with valid parameters'
    it '[POST] review without valid parameters'
    it '[DELETE] review'
  end

end