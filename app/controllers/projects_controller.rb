class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # GET /projects
  # GET /projects.json
  def index
    redirect_to(:action => 'new')
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/show
  def show
    redirect_to(:action => 'new')
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    puts(params)
    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def project_params
      params.require(:project).permit(
            :project_company_name,
            :project_company_technical_name,
            :project_company_technical_designation,
            :project_company_technical_email,
            :project_company_director_name,
            :project_company_director_designation,
            :project_company_director_email,
            :project_name,
            :project_background,
            :project_concept,
            :project_design,
            :project_skills,
            :project_solutions,
            :project_nda_required,
            :project_funding_commitment,
            :project_company_email_conf
      )
    end
end