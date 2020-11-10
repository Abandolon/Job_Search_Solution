FactoryBot.define do
  factory :job do
    title { Faker::Job.title }
    salary { 15 }
  end
end
