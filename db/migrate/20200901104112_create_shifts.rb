class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|

      t.date :date, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
