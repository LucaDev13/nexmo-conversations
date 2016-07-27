class NccoTalkActionsController < ApplicationController
  before_action :set_ncco_talk_action, only: [:show, :edit, :update, :destroy]

  # GET /ncco_talk_actions
  # GET /ncco_talk_actions.json
  def index
    @ncco_talk_actions = NccoTalkAction.all
  end

  # GET /ncco_talk_actions/1
  # GET /ncco_talk_actions/1.json
  def show
  end

  # GET /ncco_talk_actions/new
  def new
    @ncco_talk_action = NccoTalkAction.new
  end

  # GET /ncco_talk_actions/1/edit
  def edit
  end

  # POST /ncco_talk_actions
  # POST /ncco_talk_actions.json
  def create
    @ncco_talk_action = NccoTalkAction.new(ncco_talk_action_params)

    respond_to do |format|
      if @ncco_talk_action.save
        format.html { redirect_to @ncco_talk_action, notice: 'Ncco talk action was successfully created.' }
        format.json { render :show, status: :created, location: @ncco_talk_action }
      else
        format.html { render :new }
        format.json { render json: @ncco_talk_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ncco_talk_actions/1
  # PATCH/PUT /ncco_talk_actions/1.json
  def update
    respond_to do |format|
      if @ncco_talk_action.update(ncco_talk_action_params)
        format.html { redirect_to @ncco_talk_action, notice: 'Ncco talk action was successfully updated.' }
        format.json { render :show, status: :ok, location: @ncco_talk_action }
      else
        format.html { render :edit }
        format.json { render json: @ncco_talk_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ncco_talk_actions/1
  # DELETE /ncco_talk_actions/1.json
  def destroy
    @ncco_talk_action.destroy
    respond_to do |format|
      format.html { redirect_to ncco_talk_actions_url, notice: 'Ncco talk action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ncco_talk_action
      @ncco_talk_action = NccoTalkAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ncco_talk_action_params
      params.require(:ncco_talk_action).permit(:loop, :text, :level, :voice_name)
    end
end
