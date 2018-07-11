class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all
  end
   # GET /videos/1
  # GET /videos/1.json
  def show
  end

  # GET /videos/new
 def new
    @video = Video.new
 end
# GET /videos/1/edit
def edit
  @album = Album.find(@video.album_id)
end
# POST /videos
  # POST /videos.json
  def create
    @album = Album.find(params[:album_id])
    @video = @album.videos.new(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to @album, notice: 'Video creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end
# PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    @album = Album.find(params[:video][:album_id])
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @album, notice: 'Video editado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy

    @album = Album.find(@video.album_id)

    respond_to do |format|
      format.html { redirect_to @album , notice: 'Video eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
    @video.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_video
    @video = Video.find(params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def video_params
    params.require(:video).permit(:title, :link, :album_id)
  end

end
