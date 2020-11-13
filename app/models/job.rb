class Job < ApplicationRecord
  has_many :job_language, dependent: :destroy
  has_many :languages, through: :job_language
  has_many :shift_dates, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :salary, presence: true

  accepts_nested_attributes_for :shift_dates, allow_destroy: true

  def validates_shift_dates
    errors.add(:shift_date, "maximum 7 shift dates allowed") if shift_dates.size > 7
    errors.add(:shift_date, "requires at least 1 shift_date") if shift_dates.empty?
  end

  def total_salary
    salary * total_job_hours
  end

  def total_job_hours
    hours = 0
    shift_dates.each do |sd|
      hours += sd.total_hours
    end
    hours
  end
end
