class AddHolidayDateToAppjans < ActiveRecord::Migration[5.2]
  def change
    add_column :appjans,:date,:date
    add_column :appjans,:holiday,:integer
  end
end
