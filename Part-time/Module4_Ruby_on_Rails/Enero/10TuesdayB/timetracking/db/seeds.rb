# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create!(name: 'Ironhack', description: 'Ironhack ia a ...')
Project.create!(name: 'Time tracking app')
Project.create!(name: 'Recipes', description: 'Track my favorite recipes')
Project.create!(name: 'Ironman', description: 'Fly, you fools')
Project.create!(name: 'new year')
Project.create!(name: 'buy the dog')
Project.create!(name: 'walk the milk')
Project.create!(name: 'Running', description: 'Be faster')

TimeEntry.create! project_id: 1, hours: 2, minutes: 15, comments: "comment1"
TimeEntry.create! project_id: 2, hours: 3, minutes: 25, comments: "comment2"
TimeEntry.create! project_id: 3, hours: 4, minutes: 35, comments: "comment3"
TimeEntry.create! project_id: 4, hours: 5, minutes: 45, comments: "comment4"
