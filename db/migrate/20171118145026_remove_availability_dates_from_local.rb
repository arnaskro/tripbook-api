class RemoveAvailabilityDatesFromLocal < ActiveRecord::Migration[5.1]
  def change
    remove_column :locals, :available_from
    remove_column :locals, :available_to
  end
end
