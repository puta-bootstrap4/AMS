class AddWorkDateToAppJanuaries < ActiveRecord::Migration[5.2]
  def change
    add_column :app_januaries, :work_date, :integer
  end
end
