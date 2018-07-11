class RadiosecradsController < ApplicationController
  before_action :set_radiosecrad, only: [:show, :edit, :update, :destroy]

  # GET /radiosecrads
  # GET /radiosecrads.json
  def index
    @radiosecrads = Radiosecrad.all
  end

  # GET /radiosecrads/1
  # GET /radiosecrads/1.json
  def show
    @radiosecrad = Radiosecrad.diasSeleccionados
  end

  # GET /radiosecrads/new
  def new
    @radiosecrad = Radiosecrad.new
  end

  # GET /radiosecrads/1/edit
  def edit
  end

  # POST /radiosecrads
  # POST /radiosecrads.json
  def create
    @radiosecrad = Radiosecrad.new(radiosecrad_params)

    respond_to do |format|
      if @radiosecrad.save
        format.html { redirect_to radiosecrads_url, notice: 'Programa creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @radiosecrad }
      else
        format.html { render :new }
        format.json { render json: @radiosecrad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /radiosecrads/1
  # PATCH/PUT /radiosecrads/1.json
  def update
    respond_to do |format|
      if @radiosecrad.update(radiosecrad_params)
        format.html { redirect_to radiosecrads_url, notice: 'Programa editado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @radiosecrad }
      else
        format.html { render :edit }
        format.json { render json: @radiosecrad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radiosecrads/1
  # DELETE /radiosecrads/1.json
  def destroy
    @radiosecrad.destroy
    respond_to do |format|
      format.html { redirect_to radiosecrads_url, notice: 'Programa eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_radiosecrad
      @radiosecrad = Radiosecrad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def radiosecrad_params
      params.require(:radiosecrad).permit(:progration, :schedule, :schedule1, :details, :datte, :transmition)
    end
end
