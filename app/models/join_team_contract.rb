class JoinTeamContract < ActiveRecord::Base
  belongs_to :team
  belongs_to :student
end
