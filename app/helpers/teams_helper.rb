module TeamsHelper
  def full?(team)
    team.students.length >= 6
  end
end
