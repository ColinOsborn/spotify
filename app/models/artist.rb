class Artist
  attr_reader :name, :id, :created_at, :updated_at

  def initialize(new_artist_hash)
    # you may want to use hash_with_indifferent_access incase stuff is coming in as strings
    @name = new_artist_hash[:name]
    @id = new_artist_hash[:id]
    @created_at = new_artist_hash[:created_at]
    @updated_at = new_artist_hash[:updated_at]
  end


  def self.all
    ArtistService.new.all
  end
end
