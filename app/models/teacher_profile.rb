class TeacherProfile < ApplicationRecord
  belongs_to :user
  has_many :teacher_assignments, dependent: :destroy
  has_many :course_offerings, through: :teacher_assignments
end
