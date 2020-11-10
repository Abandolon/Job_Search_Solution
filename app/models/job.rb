class Job < ApplicationRecord
  has_many :job_language
  has_many :languages, through: :job_language
  validates :title, presence: true, uniqueness: true
  validates :salary, presence: true
end
