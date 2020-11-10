FactoryBot.define do
  factory :shift_date do
    start_date { "2020-11-10" }
    end_date { "2020-12-10" }
    job { create(:job) }
  end
end
