require 'rails_helper'

RSpec.describe Artist, type: :model do
  context 'methods that utilize the artist service' do
    let(:fake_artist_hash) do
      {
        # "name" => "Miley Cyrus",
        # "id" => 8,
        # "created_at" => "4/15/2016",
        # "updated_at" => " 4/16/2016"
      }
    end

    let(:fake_artist_service) do
      double(:fake_artist_service,
             get_artist: fake_artist_hash,
             all: []
            )
    end

    before do
      allow(ArtistService).to receive(:new).and_return(fake_artist_service)
    end

    describe '.find' do
      it 'leverages the artist service to retrieve the individual artist' do
        Artist.find(7)
        expect(fake_artist_service).to have_received(:get_artist).with(7)
      end
    end

    describe '.all' do

      it 'leverages the artist service to retrieve all the artists' do
        Artist.all
        expect(fake_artist_service).to have_received(:all)
      end
    end
  end
end
