FactoryBot.define do
  factory :job_application do
    job { create(:job) }
    user { create(:user) }
  end
end
