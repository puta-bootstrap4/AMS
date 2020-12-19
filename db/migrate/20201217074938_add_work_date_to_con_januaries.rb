class AddWorkDateToConJanuaries < ActiveRecord::Migration[5.2]
  def change
    add_column :con_januaries, :work_date, :integer
  end
end
