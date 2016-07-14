require 'rails_helper'

RSpec.feature "user searches for an artist" do
  scenario "when building a playlist, user searches for artist" do

    visit root_path

    fill_in :search, with: "Millencolin"
    click_on "Search"

    expect(current_path).to eq(artists_path)
    expect(response).to have_http_status(:success)
    expect(page).to have_content("ARTIST")
    expect(page).to have_content("Millencolin")
  end
end
