class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = find(params[:id])
  end

end
