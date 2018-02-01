class EventUrlsController < ApplicationController
  skip_before_action :authenticate_admin!, only: [:new, :create]

  before_action :set_event_url, only: [:show, :edit, :update, :destroy]

  # GET /event_urls
  # GET /event_urls.json
  def index
    if params[:search]
        @event_urls = EventUrl.order(created_at: :desc)
    else
        @event_urls = EventUrl.order(created_at: :desc)
    end
  end

  # GET /event_urls/1
  # GET /event_urls/1.json
  def show
  end

  # GET /event_urls/new
  def new
    @event_url = EventUrl.new
  end

  # GET /event_urls/1/edit
  def edit
  end

  # POST /event_urls
  # POST /event_urls.json
  def create
    @event_url = EventUrl.new(event_url_params)

    respond_to do |format|
      if @event_url.save
        format.html { redirect_to @event_url, notice: 'Event url was successfully created.' }
        format.json { render :show, status: :created, location: @event_url }
      else
        format.html { render :new }
        format.json { render json: @event_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_urls/1
  # PATCH/PUT /event_urls/1.json
  def update
    respond_to do |format|
      if @event_url.update(event_url_params)
        format.html { redirect_to @event_url, notice: 'Event url was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_url }
      else
        format.html { render :edit }
        format.json { render json: @event_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_urls/1
  # DELETE /event_urls/1.json
  def destroy
    @event_url.destroy
    respond_to do |format|
      format.html { redirect_to event_urls_url, notice: 'Event url was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_url
      @event_url = EventUrl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_url_params
      params.permit(:start_time, :rate, :to, :from, :uuid, :conversation_uuid, :status, :direction, :recording_url, :rate, :start_time, :network, :price, :duration, :end_time, :search, :dtmf)
    end
end
