class JoinTeamContractsController < ApplicationController
  before_action :set_join_team_contract, only: [:show, :edit, :update, :destroy]
	helper_method :finalize_contract
	
	def finalize_contract
		team_to_join = Team.find_by_id(@join_team_contract.team_id)
		student = Student.find_by_id(@join_team_contract.student_id)
		team_to_join.students << student
		student.team_id = team_to_join.id
		JoinTeamContract.destroy_all(:student_id => student.id)
	end
	
  # GET /join_team_contracts
  # GET /join_team_contracts.json
  def index
    @join_team_contracts = JoinTeamContract.all
  end 
  # GET /join_team_contracts/1
  # GET /join_team_contracts/1.json
  def show
  end

  # GET /join_team_contracts/new
  def new
    @join_team_contract = JoinTeamContract.new
  end

  # GET /join_team_contracts/1/edit
  def edit
  end

  # POST /join_team_contracts
  # POST /join_team_contracts.json
  def create
    @join_team_contract = JoinTeamContract.new(join_team_contract_params)

    respond_to do |format|
      if @join_team_contract.save
        format.html { redirect_to (:back), notice: 'Team join request sent.' }
        format.json { render action: 'show', status: :created, location: @join_team_contract }
      else
        format.html { render action: 'new' }
        format.json { render json: @join_team_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_team_contracts/1
  # PATCH/PUT /join_team_contracts/1.json
  def update
    respond_to do |format|
      if @join_team_contract.update(join_team_contract_params)
        if @join_team_contract.team_accepted and @join_team_contract.student_accepted
          finalize_contract
        end
        format.html { redirect_to (:back), notice: 'Join team contract was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @join_team_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_team_contracts/1
  # DELETE /join_team_contracts/1.json
  def destroy
    @join_team_contract.destroy
    respond_to do |format|
      format.html { redirect_to join_team_contracts_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_join_team_contract
    @join_team_contract = JoinTeamContract.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def join_team_contract_params
		params.require(:join_team_contract).permit(:team_id, :student_id, :team_accepted, :student_accepted)
  end
end
