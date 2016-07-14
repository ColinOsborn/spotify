class PlaylistService < OpenStruct

  def initialize
    @connection = Faraday.new("https://api.spotify.com")
  end

  def create_playlist(uid)
    response = @connection.put("/v1/users/#{uid}/playlists")
  end

  def edit_playlist

  end


end
