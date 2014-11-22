# Students Version, Senior Design Website

The following things are done:
- Student model exists
- Team model exists
- A team can be created with a reference to a point of contact
  * That point of contact is added to the team


How to navigate the site:
- Launch the application with "rails s" in a terminal
- Navigate to localhost:3000
- /students should list the students and allow you to create a new one
- /teams should list the teams and allow you to create a new one


To do:
- Sessions for students
- A team should not need a student id passed to it, it should use the current id
- Logging in with CAS
- Making bids
- Viewing teams
- Viewing projects

Bugs:
- Student is not automatically logged in (current_student remains uninitialized) after creating a new student
