class CreateShiftDates < ActiveRecord::Migration[6.0]
  def change
    create_table :shift_dates do |t|
      t.date :start_date
      t.date :end_date
      t.integer :hours_per_day
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
