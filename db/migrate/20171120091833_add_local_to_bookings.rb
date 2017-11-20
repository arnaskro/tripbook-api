class AddLocalToBookings < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookings, :local, foreign_key: true
  end
end
