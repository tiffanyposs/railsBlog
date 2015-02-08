# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(first_name: "Tiffany", last_name: "Poss", email: "tiffanyposs@gmail.com", username: 'tiffanyposs', password: 'tiffany', admin_status: true)

User.create(first_name: "Karl", last_name: "Poss", email: "karlposs@gmail.com", username: 'karlposs', password: 'karl', admin_status: false)

