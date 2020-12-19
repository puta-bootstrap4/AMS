class ChangeAppjansToAppjanuaries < ActiveRecord::Migration[5.2]
  def change
    rename_table :appjans, :app_januaries
  end
end
