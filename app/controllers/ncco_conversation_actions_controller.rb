class NccoConversationActionsController < ApplicationController
  before_action :set_ncco_conversation_action, only: [:show, :edit, :update, :destroy]

  # GET /ncco_conversation_actions
  # GET /ncco_conversation_actions.json
  def index
    @ncco_conversation_actions = NccoConversationAction.all
  end

  # GET /ncco_conversation_actions/1
  # GET /ncco_conversation_actions/1.json
  def show
  end

  # GET /ncco_conversation_actions/new
  def new
    @ncco_conversation_action = NccoConversationAction.new
  end

  # GET /ncco_conversation_actions/1/edit
  def edit
  end

  # POST /ncco_conversation_actions
  # POST /ncco_conversation_actions.json
  def create
    @ncco_conversation_action = NccoConversationAction.new(ncco_conversation_action_params)

    respond_to do |format|
      if @ncco_conversation_action.save
        format.html { redirect_to @ncco_conversation_action, notice: 'Ncco conversation action was successfully created.' }
        format.json { render :show, status: :created, location: @ncco_conversation_action }
      else
        format.html { render :new }
        format.json { render json: @ncco_conversation_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ncco_conversation_actions/1
  # PATCH/PUT /ncco_conversation_actions/1.json
  def update
    respond_to do |format|
      if @ncco_conversation_action.update(ncco_conversation_action_params)
        format.html { redirect_to @ncco_conversation_action, notice: 'Ncco conversation action was successfully updated.' }
        format.json { render :show, status: :ok, location: @ncco_conversation_action }
      else
        format.html { render :edit }
        format.json { render json: @ncco_conversation_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ncco_conversation_actions/1
  # DELETE /ncco_conversation_actions/1.json
  def destroy
    @ncco_conversation_action.destroy
    respond_to do |format|
      format.html { redirect_to ncco_conversation_actions_url, notice: 'Ncco conversation action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ncco_conversation_action
      @ncco_conversation_action = NccoConversationAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ncco_conversation_action_params
      params.require(:ncco_conversation_action).permit(:name, :mute, :earmuff, :event_url, :event_method, :enter_sound, :exit_sound, :music_on_hold_url, :sound_on_enter, :end_on_exit, :location, :moderator_controls)
    end
end
