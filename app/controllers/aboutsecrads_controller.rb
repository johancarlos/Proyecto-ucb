class AboutsecradsController < ApplicationController
  before_action :set_aboutsecrad, only: [:show, :edit, :update, :destroy]

  # GET /aboutsecrads
  # GET /aboutsecrads.json
  def index
    @aboutsecrads = Aboutsecrad.all
  end

  # GET /aboutsecrads/1
  # GET /aboutsecrads/1.json
  def show
  end

  # GET /aboutsecrads/new
  def new
    @aboutsecrad = Aboutsecrad.new
  end

  # GET /aboutsecrads/1/edit
  def edit
  end

  # POST /aboutsecrads
  # POST /aboutsecrads.json
  def create
    @aboutsecrad = Aboutsecrad.new(aboutsecrad_params)

    respond_to do |format|
      if @aboutsecrad.save
        format.html { redirect_to @aboutsecrad, notice: 'Aboutsecrad was successfully created.' }
        format.json { render :show, status: :created, location: @aboutsecrad }
      else
        format.html { render :new }
        format.json { render json: @aboutsecrad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aboutsecrads/1
  # PATCH/PUT /aboutsecrads/1.json
  def update
    respond_to do |format|
      if @aboutsecrad.update(aboutsecrad_params)
        format.html { redirect_to aboutsecrads_url, notice: 'Editado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @aboutsecrad }
      else
        format.html { render :edit }
        format.json { render json: @aboutsecrad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aboutsecrads/1
  # DELETE /aboutsecrads/1.json
  def destroy
    @aboutsecrad.destroy
    respond_to do |format|
      format.html { redirect_to aboutsecrads_url, notice: 'Aboutsecrad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aboutsecrad
      @aboutsecrad = Aboutsecrad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aboutsecrad_params
      params.require(:aboutsecrad).permit(:image, :title1, :body1, :title2, :body2, :title3, :body3)
    end
end
