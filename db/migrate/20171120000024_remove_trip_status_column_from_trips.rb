class RemoveTripStatusColumnFromTrips < ActiveRecord::Migration[5.1]
  def change
    remove_column :trips, :trip_status
  end
end
