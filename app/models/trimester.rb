class Trimester < ApplicationRecord
    has_many :school_classes, dependent: :restrict_with_error

    validates :name, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validate :start_before_end

    private
    def start_before_end
        return if start_date.blank? || end_date.blank?
        errors.add(:end_date, "must be after start_date") if end_date <= start_date
    end
end
