class PlaylistService < OpenStruct

  def initialize
    @connection = Faraday.new("https://api.spotify.com")
  end

  def create_playlist(uid)
    response = @connection.put("/v1/users/#{uid}/playlists")
    JSON.parse(response.body)
  end

  def edit_playlist(uid, playlist_id)
    response = @connection.put("/v1/users/#{uid}/playlists/#{playlist_id}")
    JSON.parse(response.body)
  end

  def add_to_playlist(uid, playlist_id)
    response = @connection.post("/v1/users/#{uid}/playlists/#{playlist_id}/tracks")
    JSON.parse(response.body)
  end

  def destroy_playlist(uid, playlist_id)
    response = @connection.delete("/v1/users/#{uid}/playlists/#{playlist_id}/tracks")
  end


end
