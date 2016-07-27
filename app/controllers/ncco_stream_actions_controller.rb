class NccoStreamActionsController < ApplicationController
  before_action :set_ncco_stream_action, only: [:show, :edit, :update, :destroy]

  # GET /ncco_stream_actions
  # GET /ncco_stream_actions.json
  def index
    @ncco_stream_actions = NccoStreamAction.all
  end

  # GET /ncco_stream_actions/1
  # GET /ncco_stream_actions/1.json
  def show
  end

  # GET /ncco_stream_actions/new
  def new
    @ncco_stream_action = NccoStreamAction.new
  end

  # GET /ncco_stream_actions/1/edit
  def edit
  end

  # POST /ncco_stream_actions
  # POST /ncco_stream_actions.json
  def create
    @ncco_stream_action = NccoStreamAction.new(ncco_stream_action_params)

    respond_to do |format|
      if @ncco_stream_action.save
        format.html { redirect_to @ncco_stream_action, notice: 'Ncco stream action was successfully created.' }
        format.json { render :show, status: :created, location: @ncco_stream_action }
      else
        format.html { render :new }
        format.json { render json: @ncco_stream_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ncco_stream_actions/1
  # PATCH/PUT /ncco_stream_actions/1.json
  def update
    respond_to do |format|
      if @ncco_stream_action.update(ncco_stream_action_params)
        format.html { redirect_to @ncco_stream_action, notice: 'Ncco stream action was successfully updated.' }
        format.json { render :show, status: :ok, location: @ncco_stream_action }
      else
        format.html { render :edit }
        format.json { render json: @ncco_stream_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ncco_stream_actions/1
  # DELETE /ncco_stream_actions/1.json
  def destroy
    @ncco_stream_action.destroy
    respond_to do |format|
      format.html { redirect_to ncco_stream_actions_url, notice: 'Ncco stream action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ncco_stream_action
      @ncco_stream_action = NccoStreamAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ncco_stream_action_params
      params.require(:ncco_stream_action).permit(:stream_url, :loop)
    end
end
