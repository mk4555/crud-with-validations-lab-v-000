class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params)
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
     @song.update(songs_params)
    if
      redirect_to song_path(@song)
    else
      render :edit
    end
  end

  def delete
  end

  private

  def songs_params
    params.permit(:title, :release_year, :released, :genre, :artist_name)
  end
end
