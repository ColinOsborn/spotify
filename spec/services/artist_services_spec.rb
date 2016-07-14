require "rails_helper"

describe ArtistService do
  context "#artist" do
    it "returns an artist" do
      VCR.use_cassette("artist") do
        artist = ArtistService.new.get_artist(name: "Cult of Luna")

      # expect(legislators.count).to eq(20)
      expect(legislator[:last_name]).to eq("Cult of Luna")
      end
    end
  end
end
