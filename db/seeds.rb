# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

articles_list = [
	["First post!", "Rails is awesome!"],
	["Secont post!", "This would look better with boostrap."],
	["Third post", "Interested in learning RoR!"],
	["Fourth post", "I'm also interested in learning AngularJS!"],
	["Rails + Angular", "But I would love to develop RoR + AngularJS applications!"]
]

articles_list.each do |article|
	Article.create( title: article[0], body: article[1])
end