# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bo = User.create!(username: "boguth", password: "password", first_name: "Bo", last_name: "Guthrie", email: "bo.guthrie.mail@gmail.com")