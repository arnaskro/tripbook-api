class RemoveLocalFromTrips < ActiveRecord::Migration[5.1]
  def change
    remove_reference :trips, :local
  end
end
