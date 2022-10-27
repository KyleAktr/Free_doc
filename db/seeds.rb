# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
5.times do
    city = City.create!(name: Faker::Address.city)
  end

8.times do
    specialty = Specialty.create!(name: Faker::Name.name)
  end

20.times do
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..5))
end

15.times do
    doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..5))    
end

20.times do
    Appointment.create!(date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 1, format: :default), doctor_id: rand(1..15) , patient_id: rand(1..20), city_id: rand(1..5))
end

15.times do
    DocSpecial.create!(doctor_id: rand(1..15), specialty_id: rand(1..8))
end

