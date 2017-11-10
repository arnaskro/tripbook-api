class CreateTripDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_destinations do |t|
      t.references :trip, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
