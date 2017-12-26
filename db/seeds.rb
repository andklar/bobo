# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Season.destroy_all
Beer.destroy_all

Season.create!([
  	{:id => 4, name: "Winter", year: 2018},
  	{:id => 3, name: "Spring", year: 2017},
  	{:id => 2, name: "Summer", year: 2017},
  	{:id => 1, name: "Fall", year: 2017}
])

Beer.create!([
	{}
])