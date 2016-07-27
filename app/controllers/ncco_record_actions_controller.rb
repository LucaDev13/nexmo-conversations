class NccoRecordActionsController < ApplicationController
  before_action :set_ncco_record_action, only: [:show, :edit, :update, :destroy]

  # GET /ncco_record_actions
  # GET /ncco_record_actions.json
  def index
    @ncco_record_actions = NccoRecordAction.all
  end

  # GET /ncco_record_actions/1
  # GET /ncco_record_actions/1.json
  def show
  end

  # GET /ncco_record_actions/new
  def new
    @ncco_record_action = NccoRecordAction.new
  end

  # GET /ncco_record_actions/1/edit
  def edit
  end

  # POST /ncco_record_actions
  # POST /ncco_record_actions.json
  def create
    @ncco_record_action = NccoRecordAction.new(ncco_record_action_params)

    respond_to do |format|
      if @ncco_record_action.save
        format.html { redirect_to @ncco_record_action, notice: 'Ncco record action was successfully created.' }
        format.json { render :show, status: :created, location: @ncco_record_action }
      else
        format.html { render :new }
        format.json { render json: @ncco_record_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ncco_record_actions/1
  # PATCH/PUT /ncco_record_actions/1.json
  def update
    respond_to do |format|
      if @ncco_record_action.update(ncco_record_action_params)
        format.html { redirect_to @ncco_record_action, notice: 'Ncco record action was successfully updated.' }
        format.json { render :show, status: :ok, location: @ncco_record_action }
      else
        format.html { render :edit }
        format.json { render json: @ncco_record_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ncco_record_actions/1
  # DELETE /ncco_record_actions/1.json
  def destroy
    @ncco_record_action.destroy
    respond_to do |format|
      format.html { redirect_to ncco_record_actions_url, notice: 'Ncco record action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ncco_record_action
      @ncco_record_action = NccoRecordAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ncco_record_action_params
      params.require(:ncco_record_action).permit(:format, :split, :start_on_answer, :end_on_key, :destination_url, :streamed, :limit, :validity_time, :event_url, :event_method, :backup_url, :backup_method, :beep_start, :beep_finish, :secure)
    end
end
