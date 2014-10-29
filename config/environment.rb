# Load the Rails application.
require File.expand_path('../application', __FILE__)

# GT CAS authentication url
CASClient::Frameworks::Rails::Filter.configure(
	:cas_base_url => "https://login.gatech.edu/cas/"
)

# Initialize the Rails application.
SeniorDesignSite::Application.initialize!
