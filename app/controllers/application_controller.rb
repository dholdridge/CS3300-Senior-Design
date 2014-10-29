class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	# This line ensures that all pages require CAS authentication
	# in order to be viewed. If the user is not authenticated, they
	# will be automatically redirected to the GT login page.
	before_filter CASClient::Frameworks::Rails::Filter

	def account
		@username = session[:cas_user]
		@extra_attributes = session[:cas_extra_attributes]
	end

	def logout
		CASClient::Frameworks::Rails::Filter.logout(self)
	end

end
