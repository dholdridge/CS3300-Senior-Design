module StudentsHelper
  include JoinTeamContractsHelper

  def on_team?(student, team)
    student.team_id == team.id
  end

  def on_any_team?(student)
    !(student.team_id.nil?)
  end

  def set_team(student, team)
    student.team_id = team.id
    student.save
  end

  def request_to_join_team(student, team)
    contract = JoinTeamContract.new
    contract.team_id = team.id
    contract.student_id = student.id
    student_accept(contract)
    contract.save
    contract
  end

  def make_team(student)
    if (on_any_team?(student))
      nil
    else
      team = Team.create
      team.students << student
      student.team_id = team.id
      team.point_of_contact_id = student.id
      team
    end
  end

  def make_bid(student)
    if (on_any_team?(student))
      bid = Bid.create
      student.team.bids << bid
      student.team.save
      bid
    else
      nil
    end
  end

end
