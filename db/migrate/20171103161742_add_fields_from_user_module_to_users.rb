class AddFieldsFromUserModuleToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :birthday, :datetime
    add_column :users, :gender, :integer, limit: 1
    add_column :users, :city_id, :integer
    add_column :users, :country_id, :integer
    add_column :users, :active, :boolean, default: true
  end
end
