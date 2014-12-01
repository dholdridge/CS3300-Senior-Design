include SessionsHelper

Given(/^that I am a student$/) do
  @student = Student.create
end

Given(/^that I am on a team$/) do
  other_team = Team.create
  set_team(@student, other_team)
end

Given(/^that I am not on a team$/) do
  @student.team_id = nil;
end

When(/^I try to create a new team$/) do
  @team = make_team(@student)
end

Then(/^a new team should be created$/) do
    assert(!@team.nil?)
end

Then(/^the new team should not be created$/) do
  assert(@team.nil?)
end

Then(/^I should be a member of the new team$/) do
  assert(on_team?(@student, @team))
end
