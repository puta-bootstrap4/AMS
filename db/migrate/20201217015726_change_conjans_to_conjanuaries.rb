class ChangeConjansToConjanuaries < ActiveRecord::Migration[5.2]
  def change
    rename_table :conjans, :con_januaries
  end
end
