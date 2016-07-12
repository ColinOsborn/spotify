class ArtistService

  def initialize
    @connection = Faraday.new("https://api.spotify.com")
    # @connection.headers["Authorization"] = "Bearer 35148ad62db32ff044d6df2cd57"
  end

  def get_artists(id)
    response = @connection.get("/api/v1/artists.json")
    JSON.parse(response.body)
    # can only retrive 50 artists
  end

  def get_artist(id)
    response = @connection.get("/v1/artists/#{id}")
    JSON.parse(response.body)
  end


end
