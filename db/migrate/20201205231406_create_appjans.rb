class CreateAppjans < ActiveRecord::Migration[5.2]
  def change
    create_table :appjans do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.boolean :holiday
      t.integer :user_id

      t.timestamps
    end
  end
end
