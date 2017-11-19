class RemoveMeetings < ActiveRecord::Migration[5.1]
  def change
    drop_table :meetings
  end
end
