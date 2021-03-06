class Artist < OpenStruct
  # attr_reader :name, :id, :created_at, :updated_at
  #
  # def initialize(new_artist_hash)
  #   @name = new_artist_hash["name"]
  #   @id = new_artist_hash["id"]
  #   # @url = new_artist_hash["url"]
  #   @created_at = new_artist_hash["created_at"]
  #   @updated_at = new_artist_hash["updated_at"]
  # end

  def self.all
    artists_hash = ArtistService.new.get_artists
    Artist.new(artist_hash)
  end

  def self.find(id)
    artist_hash = ArtistService.new.get_artist(id)
    Artist.new(artist_hash)
  end

  def self.search(name)
    artist_hash = ArtistService.new.search_artist(name)
    Artist.new(artist_hash)
  end

end
