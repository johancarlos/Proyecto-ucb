class ContestantsController < ApplicationController
  before_action :set_contestant, only: [:show, :edit, :update, :destroy]

  # GET /contestants
  # GET /contestants.json
  def index
    @contestants = Contestant.all
  end

  # GET /contestants/1
  # GET /contestants/1.json
  def show
    @contest = Contest.find(@contestant.contest_id)
  end

  # GET /contestants/new
  def new
    @contestant = Contestant.new
    @contest = Contest.find(params[:contest_id])
  end

  # GET /contestants/1/edit
  def edit
    @contest = Contest.find(@contestant.contest_id)
  end

  # POST /contestants
  # POST /contestants.json
  def create
    @contest = Contest.find(params[:contest_id])
    @contestant = @contest.contestants.new(contestant_params)

    respond_to do |format|
      if @contestant.save
        format.html { redirect_to @contest, notice: 'Concursante creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @contestant }
      else
        format.html { render :new }
        format.json { render json: @contestant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contestants/1
  # PATCH/PUT /contestants/1.json
  def update
    @contest = Contest.find(params[:contestant][:contest_id])
    @contestant = Contestant.find(params[:id])
    respond_to do |format|
      if @contestant.update(contestant_params)
        format.html { redirect_to @contest, notice: 'Concursante editado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @contestant }
      else
        format.html { render :edit }
        format.json { render json: @contestant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contestants/1
  # DELETE /contestants/1.json
  def destroy
    @contest = Contest.find(@contestant.contest_id)
    respond_to do |format|
      format.html { redirect_to @contest, notice: 'Concursante eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
    @contestant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contestant
      @contestant = Contestant.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def contestant_params
      params.require(:contestant).permit(:name, :lastname, :mail, :cellphone, :contest_id,:image,:video,:song)
    end
end
