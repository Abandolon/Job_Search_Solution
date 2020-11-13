FactoryBot.define do
  factory :shift_date do
    start_date { Faker::Date.between(from: Date.tomorrow, to: Date.today + 30.days) }
    end_date { Faker::Date.between(from: Date.today + 7.days, to: Date.today + 40.days) }
    hours_per_day { 8 }
    job { create(:job) }
  end
end
