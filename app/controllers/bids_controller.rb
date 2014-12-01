class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :edit, :update, :destroy]

  # GET /bids
  # GET /bids.json
  def index
    @bids = Bid.all
  end

  # GET /bids/1
  # GET /bids/1.json
  def show
  end

  # GET /bids/new
  def new
    @bid = Bid.new
  end

  # GET /bids/1/edit
  def edit
  end

  # POST /bids
  # POST /bids.json
  def create
    @bid = Bid.new(bid_params)
    Team.find(bid_params[:team_id]).bids << @bid

    respond_to do |format|
      if @bid.save
        format.html { redirect_to (:back), notice: 'Bid was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bid }
      else
        format.html { render action: 'new' }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bids/1
  # PATCH/PUT /bids/1.json
  def update
    respond_to do |format|
      if @bid.update(bid_params)
				if bid_params.length == 1 and bid_params.has_key?(:priority)
					@bid.priority = bid_params[:priority]
					current_team = Team.find_by_id(current_student.team_id)
					new_bid_idx = current_team.bids.find_index {|item| item.id == @bid.id}
					current_team.bids[new_bid_idx].priority = @bid.priority
					
				end
        format.html { redirect_to (:back), notice: 'Bid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bids/1
  # DELETE /bids/1.json
  def destroy
    @bid.destroy
    respond_to do |format|
      format.html { redirect_to bids_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_params
      params.require(:bid).permit(:team_id, :project_id, :bid_text, :priority)
    end
end
