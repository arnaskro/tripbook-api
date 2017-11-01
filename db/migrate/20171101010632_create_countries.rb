class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :key
      t.string :capital

      t.timestamps
    end
  end
end
