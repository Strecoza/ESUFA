class CreateTrimesters < ActiveRecord::Migration[8.0]
  def change
    create_table :trimesters do |t|
      t.string :name, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false

      t.timestamps
    end
    add_index :trimesters, [ :name, :start_date ], unique: true
  end
end
