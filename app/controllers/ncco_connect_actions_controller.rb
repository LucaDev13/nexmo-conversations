class NccoConnectActionsController < ApplicationController
  before_action :set_ncco_connect_action, only: [:show, :edit, :update, :destroy]

  # GET /ncco_connect_actions
  # GET /ncco_connect_actions.json
  def index
    @ncco_connect_actions = NccoConnectAction.all
  end

  # GET /ncco_connect_actions/1
  # GET /ncco_connect_actions/1.json
  def show
  end

  # GET /ncco_connect_actions/new
  def new
    @ncco_connect_action = NccoConnectAction.new
  end

  # GET /ncco_connect_actions/1/edit
  def edit
  end

  # POST /ncco_connect_actions
  # POST /ncco_connect_actions.json
  def create
    @ncco_connect_action = NccoConnectAction.new(ncco_connect_action_params)

    respond_to do |format|
      if @ncco_connect_action.save
        format.html { redirect_to @ncco_connect_action, notice: 'Ncco connect action was successfully created.' }
        format.json { render :show, status: :created, location: (@ncco_connect_action) }
      else
        format.html { render :new }
        format.json { render json: @ncco_connect_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ncco_connect_actions/1
  # PATCH/PUT /ncco_connect_actions/1.json
  def update
    respond_to do |format|
      if @ncco_connect_action.update(ncco_connect_action_params)
        format.html { redirect_to @ncco_connect_action, notice: 'Ncco connect action was successfully updated.' }
        format.json { render :show, status: :ok, location: @ncco_connect_action }
      else
        format.html { render :edit }
        format.json { render json: @ncco_connect_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ncco_connect_actions/1
  # DELETE /ncco_connect_actions/1.json
  def destroy
    @ncco_connect_action.destroy
    respond_to do |format|
      format.html { redirect_to ncco_connect_actions_url, notice: 'Ncco connect action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ncco_connect_action
      @ncco_connect_action = NccoConnectAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ncco_connect_action_params
      params.require(:ncco_connect_action).permit(:event_url, :event_method, :backup_url, :backup_url, :backup_method, :timeout, :limit, :from, :halt_on_fail, :endpoint)
    end
end
