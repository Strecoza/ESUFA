class CreateTeacherAssignments < ActiveRecord::Migration[8.0]
  def change
    create_table :teacher_assignments do |t|
      t.references :teacher_profile, null: false, foreign_key: true
      t.references :course_offering, null: false, foreign_key: true

      t.timestamps
    end
  end
end
