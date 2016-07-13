class SearchController < ApplicationController
  
  def index
    @artist = Artist.all
  if params[:search]
    @artist = Artist.search(params[:search])
  end

end
