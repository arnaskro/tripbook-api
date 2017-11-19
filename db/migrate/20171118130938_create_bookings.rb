class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :trip, foreign_key: true
      t.references :user, foreign_key: true
      t.date :from_date
      t.date :to_date
      t.integer :number_of_people
      t.integer :status

      t.timestamps
    end
  end
end
