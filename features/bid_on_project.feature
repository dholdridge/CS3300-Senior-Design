Feature: Place a bid
  As a Student
  I want to place a bid on a project
  So that my team and I have a project to work on throughout the semester

  Background:
    Given that I am a Student

  Scenario: Normal Bid Placement
    Given A Project with Name “Coca-Cola Project” and team name “Monsters”
    When I place a bid with priority 1
    Then The system records “Coca-Cola Project” with priority 1 for team “Monsters”

  Scenario: One Team Member Bid Conflict Same Project
    Given A project with name “Coca-Cola Project” and team name “Monsters”
    and I have already placed a bid for  “Coca-Cola Project” with priority 1
    When I place a bid with priority 2
    Then The system asks me whether I would like to overwrite my previous bid
    And if no, the system does nothing
    And if yes, the system edits bid associated with “Coca-Cola Project” for team
    “Monsters” to priority 2

  Scenario: One Team Member Bid Conflict Different Projects
    Given A project with name “Coca-Cola Project” and another project with name “Pepsi Project”
    and team name “Monsters” and I have already placed a bid for “Coca-Cola Project” with 
    priority 1
    When I place a bid with priority 1 for “Pepsi Project”
    Then The system asks me whether I would like to transfer over my priority 1 bid from 
    “Coca-Cola Project” to “Pepsi Project” for team “Monsters”
    And if no, the system does nothing
    And if yes, system deletes bid associated with “Coca-Cola Project” for team “Monsters”
    and records “Pepsi Project” with priority 1 for team “Monsters”

  Scenario: Two Team Members Bid Conflict
    Given A project with name “Coca-Cola Project” and team name “Monsters” and team member
    “Felipe” and team member “David” and Felipe already placed bid on “Coca-Cola Project” 
    with priority 1
    When David places a bid on “Coca-Cola Project” with priority 2
    Then The system asks David whether he would like to overwrite previous bid
    And if no, the system does nothing
    And if yes, the system records “Coca-Cola Project” with priority 2 for team 	
    “Monsters”

  Scenario: Bid Negative Number
    Given A project with name “Coca-Cola Project” and team name “Monsters”
    When I place a bid with priority -1
    Then The system ignores my bid

  Scenario: Bid Zero
    Given A project with name “Coca-Cola Project” and team name “Monsters”
    When I place a bid with priority 0
    Then The system ignores my bid

  Scenario: Bid Random Character
    Given A project with name “Coca-Cola Project” and team name “Monsters”
    When I place a bid with priority z
    Then The system ignores my bid

  Scenario: Bid Overflow int(11)
    Given A project with name “Coca-Cola Project” and team name “Monsters”
    When I place a bid with priority 2147483648
    Then The system ignores my bid
