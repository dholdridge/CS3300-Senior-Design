include TeamsHelper
include JoinTeamContractsHelper
include StudentsHelper

Given(/^there is a team$/) do
  @team = Team.create
end

When(/^I try to join a team$/) do
  @team_contract = request_to_join_team(@student, @team)
end

When(/^a team is not full$/) do
end

When(/^the team accepts me$/) do
  team_accept(@team_contract)
end

When(/^the team fills$/) do
  @team.students << Student.new
  @team.students << Student.new
  @team.students << Student.new
  @team.students << Student.new
  @team.students << Student.new
  @team.students << Student.new
  @team.save
end

Then(/^I should be a member of a team$/) do
  @student = Student.find_by(id: @student.id)
  assert(@student.team_id == @team.id, @student.team_id)
end

Then(/^the team contract should not be completeable$/) do
  assert(!can_complete_contract?(@team_contract))
end

Then(/^the team contract should be made$/) do
  assert(!@team_contract.nil?)
end
