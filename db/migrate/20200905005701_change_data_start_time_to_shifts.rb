class ChangeDataStartTimeToShifts < ActiveRecord::Migration[6.0]
  def change
    change_column :shifts, :start_time, :timestamp
  end
end
