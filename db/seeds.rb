# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

english_names = %w(English German Italian Spanish)
german_names = %w(Englisch Deutsch Italienisch Spanisch)

puts "Creating Languages"
english_names.each_with_index do |lang, index|
  Language.create(name_eng: lang, name_deu: german_names[index])
end

puts "Creating 10 Jobs"
10.times do
  job = FactoryBot.create(:job, salary: rand(10..30))
  puts "Creating 3 Shift Dates for job: #{job.title}"
  3.times do
    FactoryBot.create(:shift_date, job: job)
  end
  puts "Assigning 2 languages for job: #{job.title}"
  languages = Language.all.sample(2)
  languages.each do |language|
    JobLanguage.create(job: job, language: language)
  end
  puts "Finished creating job: #{job.title}"
end

