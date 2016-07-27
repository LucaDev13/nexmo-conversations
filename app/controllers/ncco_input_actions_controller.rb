class NccoInputActionsController < ApplicationController
  before_action :set_ncco_input_action, only: [:show, :edit, :update, :destroy]

  # GET /ncco_input_actions
  # GET /ncco_input_actions.json
  def index
    @ncco_input_actions = NccoInputAction.all
  end

  # GET /ncco_input_actions/1
  # GET /ncco_input_actions/1.json
  def show
  end

  # GET /ncco_input_actions/new
  def new
    @ncco_input_action = NccoInputAction.new
  end

  # GET /ncco_input_actions/1/edit
  def edit
  end

  # POST /ncco_input_actions
  # POST /ncco_input_actions.json
  def create
    @ncco_input_action = NccoInputAction.new(ncco_input_action_params)

    respond_to do |format|
      if @ncco_input_action.save
        format.html { redirect_to @ncco_input_action, notice: 'Ncco input action was successfully created.' }
        format.json { render :show, status: :created, location: @ncco_input_action }
      else
        format.html { render :new }
        format.json { render json: @ncco_input_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ncco_input_actions/1
  # PATCH/PUT /ncco_input_actions/1.json
  def update
    respond_to do |format|
      if @ncco_input_action.update(ncco_input_action_params)
        format.html { redirect_to @ncco_input_action, notice: 'Ncco input action was successfully updated.' }
        format.json { render :show, status: :ok, location: @ncco_input_action }
      else
        format.html { render :edit }
        format.json { render json: @ncco_input_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ncco_input_actions/1
  # DELETE /ncco_input_actions/1.json
  def destroy
    @ncco_input_action.destroy
    respond_to do |format|
      format.html { redirect_to ncco_input_actions_url, notice: 'Ncco input action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ncco_input_action
      @ncco_input_action = NccoInputAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ncco_input_action_params
      params.require(:ncco_input_action).permit(:time_out, :max_digits, :submit_on_hash, :event_url, :event_method)
    end
end
