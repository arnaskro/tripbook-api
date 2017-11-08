class CreateLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :locals do |t|
      t.integer :user_id
      t.boolean :available, default: false
      t.boolean :active, default: true
      t.date :available_from
      t.date :available_to
      t.string :description
      t.string :quote

      t.timestamps
    end
  end
end
