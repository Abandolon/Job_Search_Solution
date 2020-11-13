class Language < ApplicationRecord
  require 'pg_search'
  include PgSearch::Model
  multisearchable against: %i[name_eng name_deu]

  has_many :job_language
  has_many :jobs, through: :job_language
  validates :name_eng, :name_deu, presence: true, uniqueness: true
end
