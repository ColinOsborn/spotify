class Artist < OpenStruct
  attr_reader :name, :id, :created_at, :updated_at

  def initialize(new_artist_hash)
    @name = new_artist_hash["name"]
    @id = new_artist_hash["id"]
    @created_at = new_artist_hash["created_at"]
    @updated_at = new_artist_hash["updated_at"]
  end

  def self.find(id)
    artist_hash = ArtistService.new.get_artist(id)
    Artist.new(artist_hash)
  end

end