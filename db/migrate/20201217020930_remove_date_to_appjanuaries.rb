class RemoveDateToAppjanuaries < ActiveRecord::Migration[5.2]
  def change
    remove_column :app_januaries, :date, :integer
  end
end
