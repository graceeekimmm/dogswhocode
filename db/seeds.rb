# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Dog.create(:title => 'Bryan', :breed => 'Chocolate Labrador')
Dog.create(:title => 'Munar', :breed => 'Chocolate Labrador')
Dog.create(:title => 'Max', :breed => 'Golden Retriever')
