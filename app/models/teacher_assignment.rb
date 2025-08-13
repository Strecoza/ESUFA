class TeacherAssignment < ApplicationRecord
  belongs_to :teacher_profile
  belongs_to :course_offering

  validates :teacher_profile_id, presence: true
  validates :course_offering_id, presence: true
end
