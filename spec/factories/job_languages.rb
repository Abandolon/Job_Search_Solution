FactoryBot.define do
  factory :job_language do
    job { create(:job) }
    language { create(:language) }
  end
end
