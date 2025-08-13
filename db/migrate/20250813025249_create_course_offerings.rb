class CreateCourseOfferings < ActiveRecord::Migration[8.0]
  def change
    create_table :course_offerings do |t|
      t.references :course, null: false, foreign_key: true
      t.references :trimester, null: false, foreign_key: true
      t.integer :capacity
      t.integer :status
      t.string :room
      t.string :schedule

      t.timestamps

      add_index :course_offerings, [:course_id, :trimester_id], unique: true
      add_index :course_offerings, :status
    end
  end
end
