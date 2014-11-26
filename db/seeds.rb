# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Team.create(name: 'First Team', point_of_contact_id: '1')
Team.create(name: 'Second Team', point_of_contact_id: '3')
Student.create(first_name: 'John', last_name: 'Smith', team_id: '1', email: 'test1@gmail.com', interests: 'fishing')
Student.create(first_name: 'Billy', last_name: 'Bob', team_id: '1', email: 'test2@gmail.com', interests: 'skateboarding')
Student.create(first_name: 'Waldo', last_name: 'Fikes', team_id: '2', email: 'test3@gmail.com', interests: 'programming')
Student.create(first_name: 'Francina', last_name: 'Kuehl', team_id: '2', email: 'test3@gmail.com', interests: 'hiking')
Student.create(first_name: 'Avery', last_name: 'Woolverton', team_id: '2', email: 'test5@gmail.com', interests: 'sleeping')
Student.create(first_name: 'Lilly', last_name: 'Nevius', team_id: '2', email: 'test6@gmail.com', interests: 'reading')