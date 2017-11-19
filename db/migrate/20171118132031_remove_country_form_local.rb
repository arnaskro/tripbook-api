class RemoveCountryFormLocal < ActiveRecord::Migration[5.1]
  def change
    remove_column :locals, :country_id
  end
end
