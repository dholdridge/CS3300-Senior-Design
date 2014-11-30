Feature: Joining a Team
    As a student
    I want to be able to join a team
    So that I can work on the project with my team members

    Background:
        Given that I am a student
        And there is a team

    Scenario: Student who is not a member of any team joins a team
        Given that I am not on a team
        When I try to join a team
        And a team is not full
        And the team accepts me
        Then the team contract should be made
        And I should be a member of a team

    Scenario: Student who is a member of a team tries to join another team
        Given that I am on a team
        When I try to join a team
        Then the team contract should not be made

    Scenario: Student of tries to join a full team
        Given that I am not on a team
        And a team is full
        When I try to join a team
        Then the team contract should not be made
