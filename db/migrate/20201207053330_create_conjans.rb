class CreateConjans < ActiveRecord::Migration[5.2]
  def change
    create_table :conjans do |t|
      t.string :username
      t.integer :date
      t.time :start_time
      t.time :end_time
      t.integer :holiday

      t.timestamps
    end
  end
end
