class ShiftDate < ApplicationRecord
  belongs_to :job
  validates :start_date, :end_date, presence: true
end
