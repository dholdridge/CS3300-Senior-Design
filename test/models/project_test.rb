require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

	def setup
		@project = Project.new(
			project_company_name: "ACME Inc.", 
			project_company_technical_name: "Mr. Techie", 
			project_company_technical_designation: "IT",
			project_company_technical_email: "techie@web.com",
			project_company_technical_phone: "1115551515",
			project_company_director_name: "Mr. Directie",
			project_company_director_designation: "Director",
			project_company_director_email: "directie@web.com",
			project_company_director_phone: "5551111515",
			project_name: "Big Project",
			project_background: "Need help :(",
			project_concept: "Gotta be big",
			project_design: "Biggest", 
			project_skills: "All", 
			project_solutions: "None", 
			project_nda_required: true, 
			project_funding_commitment: false, 
			project_company_email_conf: true)
	end

	test "should be valid" do 
		assert @project.valid?
	end
end
