class RemoveCityAndCountryFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :city_id, :integer
    remove_column :users, :country_id, :integer
    add_column :locals, :city_id, :integer
    add_column :locals, :country_id, :integer
  end
end
