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
            :company_name,
            :company_technical_name,
            :company_technical_designation,
            :company_technical_email,
            :company_director_name,
            :company_director_designation,
            :company_director_email,
            :name,
            :background,
            :concept,
            :design,
            :skills,
            :solutions,
            :nda_required,
            :funding_commitment,
            :company_email_conf
      )
    end
end