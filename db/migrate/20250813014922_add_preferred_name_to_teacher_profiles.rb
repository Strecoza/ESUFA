class AddPreferredNameToTeacherProfiles < ActiveRecord::Migration[8.0]
  def change
    add_column :teacher_profiles, :preferred_name, :string
  end
end
