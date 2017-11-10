class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :description
      t.integer :trip_status
      t.integer :trip_type
      t.integer :number_of_people, default: 1
      t.date :from_date
      t.date :to_date
      t.text :cities, default: [], array: true

      t.timestamps
    end
  end
end
