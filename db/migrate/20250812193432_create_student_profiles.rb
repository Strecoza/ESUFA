class CreateStudentProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :student_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :grade

      t.timestamps
    end
  end
end
