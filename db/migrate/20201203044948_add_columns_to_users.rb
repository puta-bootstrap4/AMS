class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:password,:string
    add_column :users,:email,:string
    remove_column :users,:name,:text
  end
end
