class RemoveDateToAppjans < ActiveRecord::Migration[5.2]
  def change
    remove_column :appjans,:date,:date
  end
end
