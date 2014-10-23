class Team < ActiveRecord::Base
  has_one :point_of_contact, :class_name => "Student", :foreign_key => "id"
  has_many :students
end
