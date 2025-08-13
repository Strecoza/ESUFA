class CreateEnrollments < ActiveRecord::Migration[8.0]
  def change
    create_table :enrollments do |t|
      t.references :student_profile, null: false, foreign_key: true
      t.references :course_offering, null: false, foreign_key: true

      t.timestamps
    end
  end
end
