class NccosController < ApplicationController
  before_action :set_ncco, only: [:show, :edit, :update, :destroy]

  # GET /nccos
  # GET /nccos.json
  def index
    @nccos = Ncco.all
  end

  # GET /nccos/1
  # GET /nccos/1.json
  def show
  end

  # GET /nccos/new
  def new
    @ncco = Ncco.new
  end

  # GET /nccos/1/edit
  def edit
  end

  # POST /nccos
  # POST /nccos.json
  def create
    @ncco = Ncco.new(ncco_params)

    respond_to do |format|
      if @ncco.save
        format.html { redirect_to @ncco, notice: 'Ncco was successfully created.' }
        format.json { render :show, status: :created, location: @ncco }
      else
        format.html { render :new }
        format.json { render json: @ncco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nccos/1
  # PATCH/PUT /nccos/1.json
  def update
    respond_to do |format|
      if @ncco.update(ncco_params)
        format.html { redirect_to @ncco, notice: 'Ncco was successfully updated.' }
        format.json { render :show, status: :ok, location: @ncco }
      else
        format.html { render :edit }
        format.json { render json: @ncco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nccos/1
  # DELETE /nccos/1.json
  def destroy
    @ncco.destroy
    respond_to do |format|
      format.html { redirect_to nccos_url, notice: 'Ncco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ncco
      @ncco = Ncco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ncco_params
      params.fetch(:ncco, {})
    end
end
