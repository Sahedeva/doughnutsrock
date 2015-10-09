# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
items = Item.create([{ name: 'Breakfast Taco', description: 'Eggs, cheese, potatoes, sausage' }, { name: 'Shiner Monte Cristo', description: 'So delicious!' }, { name: 'Hot & Crispy Avocado Cone', description: 'Avocado crusted in almonds in a tortilla cone' }, { name: 'Bratwurst', description: 'Our famous grilled delight' }])