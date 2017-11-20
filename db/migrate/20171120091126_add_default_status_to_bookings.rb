class AddDefaultStatusToBookings < ActiveRecord::Migration[5.1]
  def change
    change_column :bookings, :status, :integer, :default => 1, :nil => false
  end
end
