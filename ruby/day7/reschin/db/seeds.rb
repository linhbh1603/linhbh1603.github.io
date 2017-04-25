# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category = [{name: 'Lau Nuong'}, {name: 'Drink'}, {name: 'Hoa Qua'}]
category.each do |e|
	Category.create(e)
end

restaurant = [{name: 'Nhat Nuong'}, {name: 'Lina Coffee'}, {name: 'Tom'}]
restaurant.each do |e|
	Restaurant.create(e)
end

c1 = Category.first
c2 = Category.second
c3 = Category.last

r1 = Restaurant.first
r2 = Restaurant.second
r3 = Restaurant.last

c1.restaurants << r1
c1.restaurants << r2

c2.restaurants << r2
c2.restaurants << r3

r1.categories << c3




