require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do
  context 'methods that utilize the artist service' do
    let(:dummy_artist) do
      Artist.new(
        name: "Miley Cyrus",
        id: 8,
        created_at: "4/15/2016",
        updated_at: " 4/16/2016"
      )
    end
    let(:dummy_artists) do
      [
          double(:artist_1),
          double(:artist_2)
      ]
    end

    let(:fake_artist_service) do
      double(:fake_artist_service,
             get_artist: dummy_artist,
             all: dummy_artists
            )
    end

    before do
      controller.artist_service = fake_artist_service
    end

    describe 'GET #show' do
      it 'leverages the artist service to retrieve the individual artist' do
        get :show, id: 7
        expect(fake_artist_service).to have_received(:get_artist).with("7")
      end

      it 'returns the artist' do
        get :show, id: 7
        expect(assigns(:artist)).to eq dummy_artist
      end
    end

    describe 'GET #index' do
      it 'leverages the artist service to retrieve all the artists' do
        get :index
        expect(fake_artist_service).to have_received(:all)
      end

      it 'returns the collection of artists' do
        get :index
        expect(assigns(:artists)).to eq dummy_artists
      end
    end
  end
end
