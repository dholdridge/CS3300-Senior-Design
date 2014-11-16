class Student < ActiveRecord::Base
  belongs_to :team
  has_many :join_team_contracts
end
