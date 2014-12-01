class Student < ActiveRecord::Base
  belongs_to :team
  has_many :join_team_contracts
	
	def full_name
    "#{first_name} #{last_name}"
  end
end
