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
    if (on_any_team?(student) || full?(team) || contract_exists?(student, team))
      nil
    else
      contract = JoinTeamContract.new
      contract.team_id = team.id
      contract.student_id = student.id
      student_accept(contract)
      contract.save
      contract
    end
  end

end
