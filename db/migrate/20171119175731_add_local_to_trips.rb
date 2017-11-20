class AddLocalToTrips < ActiveRecord::Migration[5.1]
  def change
    add_reference :trips, :local, foreign_key: true
  end
end
