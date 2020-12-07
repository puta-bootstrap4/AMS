class AddColumnsToAppjans < ActiveRecord::Migration[5.2]
  def change
    remove_column :appjans, :user_id,:integer
  end
end
