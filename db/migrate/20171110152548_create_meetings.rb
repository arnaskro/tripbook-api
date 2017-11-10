class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.references :trip, foreign_key: true
      t.references :user, foreign_key: true
      t.date :meeting_date

      t.timestamps
    end
  end
end
