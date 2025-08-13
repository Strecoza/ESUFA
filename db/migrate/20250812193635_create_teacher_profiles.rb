class CreateTeacherProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :teacher_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :subject

      t.timestamps
    end
  end
end
