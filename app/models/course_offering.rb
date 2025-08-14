class CourseOffering < ApplicationRecord
  belongs_to :course
  belongs_to :trimester

  has_many :enrollments, dependent: :destroy
  has_many :students, through: :enrollments, source: :student_profile

  has_many :teacher_assignments, dependent: :destroy
  has_many :teachers, through: :teacher_assignments, source: :teacher_profile

  enum :status, { planned: 0, open: 1, closed: 2, canceled: 3 }

  validates :capacity, numericality: { only_integer: true, greater_than: 0 }
end
