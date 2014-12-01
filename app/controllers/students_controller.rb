class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  helper_method :leave_team

  def leave_team()
    team_id = student_params[:team_id]
    team = Team.find_by_id(team_id)
    if team.students.include?(@student)
      team.students.delete(@student)
      @student.team_id = nil
      if team.students.empty?
        Team.destroy(team.id)
        JoinTeamContract.destroy_all(:team_id => team.id)
      elsif team.point_of_contact == @student
        team.update_attribute(:point_of_contact, team.students.first)
        team.update_attribute(:point_of_contact_id, team.point_of_contact.id)
      end
    end
  end
  
  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end
  
  # GET /students/1
  # GET /students/1.json
  def show
  end
  
  # GET /students/new
  def new
    @student = Student.new
  end
  
  # GET /students/1/edit
  def edit
  end
  
  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to login_path, notice: 'Student was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student }
        login(@student)
      else
        format.html { render action: 'new' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
    if @student.update(student_params)
      if student_params.length == 1 and student_params.has_key?(:team_id)
        leave_team()
      end
      format.html { redirect_to @student, notice: 'Student was successfully updated.' }
      format.json { head :no_content }
    else
      format.html { render action: 'edit' }
      format.json { render json: @student.errors, status: :unprocessable_entity }
    end
    end
  end
  
  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
    format.html { redirect_to students_url }
    format.json { head :no_content }
    end
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def student_params
    params.require(:student).permit(:first_name, :last_name, :team_id, :email, :interests)
  end
end
