class AddDateToAppjans < ActiveRecord::Migration[5.2]
  def change
    add_column :appjans,:date,:integer
  end
end
