Feature: Place a bid
  As a Student
  I want to place a bid on a project
  So that my team and I have a project to work on throughout the semester

  Background:
    Given that I am a student

  Scenario: Submit bid as teammate
    Given that I am on a team
    When I try to create a bid
    Then a new bid should be created

  Scenario: Submit bid without team
    Given that I am not on a team
    When I try to create a bid
    Then a new bid should not be created
