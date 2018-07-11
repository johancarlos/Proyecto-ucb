class ContestsController < ApplicationController
  before_action :set_contest, only: [:show, :edit, :update, :destroy]

  # GET /contests
  # GET /contests.json
  def index
    @contests = Contest.order(:sort).all
    @contestsT = Contest.count
  end

  # GET /contests/1
  # GET /contests/1.json
  def show
  end

  # GET /contests/new
  def new
    @contest = Contest.new
  end

  # GET /contests/1/edit
  def edit
  end

  def sortContests
    @contests = Contest.order(:sort).all
  end

  def vote(voto)
    @contest.cont = @contest.cont +1
    @contest.contest_score = voto/@contest.cont
  end
  # POST /contests
  # POST /contests.json
  def create
    @contest = Contest.new(contest_params)
    @contest.contest_score = 0
    @contest.cont = 0

    respond_to do |format|
      if @contest.save
        format.html { redirect_to @contest, notice: 'Concurso creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @contest }
      else
        format.html { render :new }
        format.json { render json: @contest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contests/1
  # PATCH/PUT /contests/1.json
  def update
    respond_to do |format|
      if @contest.update(contest_params)
        format.html { redirect_to @contest, notice: 'Concurso editado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @contest }
      else
        format.html { render :edit }
        format.json { render json: @contest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contests/1
  # DELETE /contests/1.json
  def destroy
    @contest.destroy
    respond_to do |format|
      format.html { redirect_to contests_url, notice: 'Concurso eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contest
      @contest = Contest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contest_params
      params.require(:contest).permit(:name, :description, :typeContest, :date_start, :date_end, :award, :contest_score, :contest_winner, :image)
    end
end
