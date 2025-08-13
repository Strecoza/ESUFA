class User < ApplicationRecord
    enum :role, {student: 0, teacher: 1, admin: 2}

    has_one :student_profile
    has_one :teacher_profile

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :role, presence: true
end
