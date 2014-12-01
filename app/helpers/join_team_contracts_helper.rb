module JoinTeamContractsHelper

  def team_accept(contract)
    contract.team_accepted = true
    if complete?(contract) && can_complete_contract?(contract)
      execute_contract(contract)
    end
    contract.save
  end

  def student_accept(contract)
    contract.student_accepted = true
    if complete?(contract) && can_complete_contract?(contract)
      execute_contract(contract)
    end
    contract.save
  end

  def complete?(contract)
    contract.team_accepted && contract.student_accepted
  end

  def can_make_contract?(student, team)
    !contract_exists(student, team) && !on_any_team(student) && !full(team)
  end

  def can_complete_contract?(contract)
    team = Team.find_by(id: contract.team_id)
    student = Student.find_by(id: contract.student_id)
    !(on_any_team?(student) || full?(team))
  end

  def execute_contract(contract)
    team = Team.find_by(id: contract.team_id)
    student = Student.find_by(id: contract.student_id)
    team.students << student
    student.team_id = team.id
    student.save
    team.save
  end

  def contract_exists?(student, team)
    contract = JoinTeamContract.find_by(student_id: student.id, team_id: team.id)
    !(contract.nil?)
  end
end
