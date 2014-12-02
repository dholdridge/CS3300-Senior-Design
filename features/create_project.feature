Feature: Add a Proposal
   As a sponsor
   I want to be able to add a proposal
   So that I can have it validated and accepted

   Scenario: Complete information
      Given that I have entered all of the required information into the project creation form
      When I click the submit button
      Then the project should be stored in the database 
	  And I should be sent to a success page
	  
   Scenario: Incomplete information
      Given that I have not filled in one or more of the required textboxes on the form
      When I click the submit button
      Then the page should give me an error message
	  And the page should highlight the textboxes that I missed
	  
   Scenario: Checked box to be notified of project openings
      Given that I have checked the "be notified of future openings for projects" box
	  And I have entered complete information
	  When I click the submit button
	  Then the project should be stored in the database
	  And I should be sent to a success page
	  And I should be put on a mailing list to notify me of future openings for projects
