class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.string :object_type
      t.integer :object_id
      t.string :text
      t.integer :stars

      t.timestamps
    end
  end
end
