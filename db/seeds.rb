# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

60.times do
  user=User.new
  user.user_name = Faker::Name.unique.name
  user.user_email = Faker::Internet.unique.email
  user.phone_number=Faker::PhoneNumber.cell_phone
  user.save
end

60.times do
  employee=Employee.new
  employee.name = Faker::Name.unique.name
  employee.email = Faker::Internet.unique.email
  employee.phone_number=Faker::PhoneNumber.cell_phone
  employee.save
end

60.times do
  student=Student.new
  student.name = Faker::Name.unique.name
  student.email = Faker::Internet.unique.email
  student.phone_number=Faker::PhoneNumber.cell_phone
  student.save
end