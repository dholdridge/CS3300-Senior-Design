Feature: Joining a Team
    As a student
    I want to be able to join a team
    So that I can work on the project with my team members

    Background:
        Given that I am a student

    Scenario: Student who is not a member of any team joins a team
        Given that I am not on a team
        When I try to join a team
        And a team is not full
        Then I should be a member of a team

    Scenario: Student who is a member of a team tries to join another team
        Given that I am on another team
        When I try to join a team
        Then I should receive an error

    Scenario: Student who is not a member of any team tries to join a team
        Given that I am not on a team
        And a team is full
        When I try to join a team
        Then I should receive an error
