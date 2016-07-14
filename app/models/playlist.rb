class Playlist

  def self.all
    artists_hash = PlaylistService.new.get_artists
    Artist.new(artist_hash)
  end

  def self.find(id)
    artist_hash = PlaylistService.new.get_artist(id)
    Artist.new(artist_hash)
  end

  def self.search(name)
    artist_hash = PlaylistService.new.search_artist(name)
    Artist.new(artist_hash)
  end

end
