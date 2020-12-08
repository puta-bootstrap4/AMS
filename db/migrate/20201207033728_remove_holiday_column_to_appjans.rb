class RemoveHolidayColumnToAppjans < ActiveRecord::Migration[5.2]
  def change
    remove_column :appjans,:holiday,:boolean
    remove_column :appjans,:date,:integer
  end
end
