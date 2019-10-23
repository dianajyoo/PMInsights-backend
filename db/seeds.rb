# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Goal.destroy_all
User.destroy_all

user = User.create!(firstName: 'Diana', encoded_id: '72CVS3')
Goal.create!(goalDate: '2018-12-19', goal: 'Finish project', user_id: user.encoded_id)

puts ("Seeded")
