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
  end

  def edit
  end

  def update
  end

  def delete
  end
end
