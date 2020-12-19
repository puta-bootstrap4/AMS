class RemoveDateToConJanuaries < ActiveRecord::Migration[5.2]
  def change
    remove_column :con_januaries, :date, :integer
  end
end
