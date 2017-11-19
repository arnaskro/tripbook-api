class AddDefaultTripTypeValueForTrips < ActiveRecord::Migration[5.1]
  def change
    change_column :trips, :trip_type, :integer, :default => 0, :nil => false
  end
end
