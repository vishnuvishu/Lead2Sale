# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Stage.create(name: "New Opportunity", description: "This stage is assigned as default when a prospect is created.", interest_level: "1")

Stage.create(name: "Negotiating", description: "This stage is assigned after the prospect responds to a proposal, but requests some changes before committing to a purchase.", interest_level: "2")

Stage.create(name: "Won", description: "This stage is assigned after the prospect makes a purchase. This is when a customer record is created and a prospect record is archived.", interest_level: "3")

Stage.create(name: "Lost", description: "This stage is assigned if a Prospect purchases from a competitor or decides they are no longer interested in your product.", interest_level: "4")


Role.create(name: "Sales Manager")
Role.create(name: "Sales Associate")

user = User.new
user.email = 'muhammed.najeeb@l2s.com'
user.password = '$Secret@123'
user.full_name = 'Muhammed Najeeb'
user.phone = '9645852457'
user.role_id = 2
user.save