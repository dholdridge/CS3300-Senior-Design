module StudentsHelper
  def on_team?(team)
    @current_student.team_id == team.id
  end
end
