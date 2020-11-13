class ShiftDate < ApplicationRecord
  belongs_to :job, inverse_of: :shift_dates
  validates :start_date, :end_date, :hours_per_day, presence: true

  def total_hours
    days = end_date - start_date
    (days * hours_per_day).to_i
  end
end
