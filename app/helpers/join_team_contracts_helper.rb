module JoinTeamContractsHelper

  def team_accept(team)
    join_team_contract[:team_accepted] = true
    if complete?
      execute_contract
    end
  end

  def student_accept(student)
    join_team_contract[:student_accepted] = true
    if complete?
      execute_contract
    end
  end

  def complete?
    join_team_contract[:team_accepted] && join_team_contract[:student_accepted]
  end

  def execute_contract
    team = Team.find_by(id: join_team_contract[:team_id])
    student = Student.find_by(id: join_team_contract[:student_id])
    team.students << student
    student.team_id = team.id
  end
end
