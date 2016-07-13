class ArtistsController < ApplicationController
  def show
    @artist = @artist_service.get_artist(params[:id])
  end

  def index
    @artists = @artist_service.all
  end

  def artist_service=(artist_service = ArtistService.new)
    @artist_service = artist_service
  end
end
