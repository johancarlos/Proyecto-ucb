class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy, :showVideos]

  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.order(:sort).all
    @albumsT = Album.count
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @photoShow = Album.find(params[:id]).photos.order(:sort)
    @videoShow = Album.find(params[:id]).videos.order(:sort)
  end
  # GET /albums/sort/1
  def sort
    
    
    @album = Album.find(params[:id])
    @photos = Album.find(params[:id]).photos.order(:sort)
    @videos = Album.find(params[:id]).videos.order(:sort)
  end
  def sortAlbums
    @albums = Album.order(:sort).all
  end
   # GET /albums/1
  # GET /albums/1.json
  def showVideos

  end

  # GET /albums/new
  def new
    @album = Album.new
  end

  # GET /albums/1/edit
  def edit
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

    # PATCH/PUT /albums/1
    # PATCH/PUT /albums/1.json
    def update
      respond_to do |format|
        if @album.update(album_params)
          format.html { redirect_to @album, notice: 'Album editado satisfactoriamente.' }
          format.json { render :show, status: :ok, location: @album }
        else
          format.html { render :edit }
          format.json { render json: @album.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /albums/1
    # DELETE /albums/1.json
    def destroy
      @album.destroy
      respond_to do |format|
        format.html { redirect_to albums_url, notice: 'Album eliminado satisfactoriamente.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_album
        @album = Album.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def album_params
        params.require(:album).permit(:name,:event_id)
      end
end
