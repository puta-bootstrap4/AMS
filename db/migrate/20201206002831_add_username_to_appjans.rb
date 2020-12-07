class AddUsernameToAppjans < ActiveRecord::Migration[5.2]
  def change
    add_column :appjans,:username,:string
  end
end
