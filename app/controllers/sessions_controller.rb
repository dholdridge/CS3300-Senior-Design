class SessionsController < ApplicationController
  def new
  end

  def create
    student = Student.find_by(first_name: params[:session][:first_name],
                              last_name: params[:session][:last_name])
    login student
    redirect_to student
  end

  def destroy
    logout
    redirect_to root_url
  end
end
