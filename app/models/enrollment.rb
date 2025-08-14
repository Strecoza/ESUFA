class Enrollment < ApplicationRecord
  belongs_to :student_profile
  belongs_to :course_offering

  validates :student_profile_id, presence: true
  validates :course_offering_id, presence: true
  validates :student_profile_id, uniqueness: { scope: :course_offering_id }
end
