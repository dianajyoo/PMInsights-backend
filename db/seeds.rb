# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Goal.destroy_all
User.destroy_all

User.create!(firstName: 'Diana', dateOfBirth: '1993-01-25', height: 162, weight: 47, encodedId:'72CVS3')
# Goal.create!(goalDate: '2018-12-19', bedtimeTarget: '11:00 PM', wakeupTarget: '6:00 AM')

puts ("Seeded")
