# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
Education.destroy_all
Experience.destroy_all
Skill.destroy_all

100.times do 
  student = Student.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password",
    phone_number: Faker::PhoneNumber.phone_number,
    bio: Faker::Lorem.paragraph,
    linked_in_url: Faker::Internet.url,
    twitter_handle: Faker::Internet.user_name,
    personal_url: Faker::Internet.url,
    resume_url: Faker::Internet.url,
    github_url: Faker::Internet.url,
    photo: Faker::Avatar.image
  )
  student.save

  education = Education.new(
    start_date: Faker::Date.between(20.years.ago, 10.years.ago),
    end_date: Faker::Date.between(10.years.ago, Date.today),
    degree: Faker::Lorem.word,
    university_name: Faker::University.name,
    details: Faker::Lorem.sentence,
    student_id: student.id
  )
  education.save
  
  rand(1..3).times do
    experience = Experience.new(
      start_date: Faker::Date.between(20.years.ago, 10.years.ago),
      end_date: Faker::Date.between(10.years.ago, Date.today),
      job_title: Faker::Company.profession,
      company_name: Faker::Company.name,
      details: Faker::Lorem.sentence,
      student_id: student.id
    )
    experience.save
  end
  rand(1..4).times do 
    skill = Skill.new(
      name: Faker::Beer.name,
      student_id: student.id
    )
    skill.save
  end
end
