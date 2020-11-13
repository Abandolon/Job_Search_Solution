class Language < ApplicationRecord
  has_many :job_language, dependent: :destroy
  has_many :jobs, through: :job_language
  validates :name_eng, :name_deu, presence: true, uniqueness: true
end
