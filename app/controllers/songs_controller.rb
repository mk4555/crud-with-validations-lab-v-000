class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
