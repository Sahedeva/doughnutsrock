# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.new({ :first_name => "Cookie", :last_name => "Monster", :email => "cookie@monster.com", :password => "cookie" })
user.hash_password
user.save

user2 = User.new({ :first_name => "Cookie2", :last_name => "Monster2", :email => "cookie2@monster.com", :password => "cookie" })
user2.hash_password
user2.save