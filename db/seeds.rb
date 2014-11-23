# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Team.create(name: 'A Team Name', point_of_contact_id: '1')
Student.create(first_name: 'Felipe', last_name: 'Monteiro', team_id: '1', email: 'test@gmail.com', interests: 'test')
Student.create(first_name: 'Billy', last_name: 'Bob', team_id: '1', email: 'test@gmail.com', interests: 'test')