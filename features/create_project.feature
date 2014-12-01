Feature: Submit a project
	As a Sponsor
	I want to submit a project
	So that an instructor may accept it and a student team can implement it

Background:
	Given that I am a Sponsor

Scenario:
	Given A Project with Company Name "Coca-Cola"
		And Technical Name "John Doe"
		And Technical Designation "Technical Supervisor"
		And Technical Email "jdoe1@gmail.com"
		And Technical Phone "5555552464"
		And Director Name "Jane Doe"
		And Director Designation "Project Manager"
		And Director Email "jdoe2@gmail.com"
		And Director Phone "5555551353"
		And Project Title "Coca-Cola Project"
		And Project Need "Need new dispenser software."
		And Project Concept "Faster, more intuitive embedded application."
		And Project Considerations "Needs to be tested and deployed on real dispensers"
		And Project Skills "C++, Linux server"
		And Project Solution "Create an embedded application that communicate with Coca-Cola servers and respond to user touch."
		And N