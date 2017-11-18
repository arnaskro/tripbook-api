class RemoveTripDestinations < ActiveRecord::Migration[5.1]
  def change
    drop_table :trip_destinations
  end
end
