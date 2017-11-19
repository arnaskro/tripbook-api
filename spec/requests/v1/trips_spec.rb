require 'rails_helper'

describe "Trips Module" do

  describe "[CREATE] trip" do
    it "creates a trip for an area by a user request"
    it "creates a trip for a local by a user request"
    it "creates a trip offer for an area by a local request"
    it "does not allow to create trip offers by user request"
    it "doesnt not allow a local to create a trip request for himself"
    it "creates a trip for a local by a user request only in the locals city"
  end

end