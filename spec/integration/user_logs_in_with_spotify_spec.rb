require 'rails_helper'

RSpec.feature "user logs in with spotify" do
  scenario "user needs to login" do
    OmniAuth.config.mock_auth[:spotify]

    visit root_path
    expect(response).to have_http_status(:success)

    click_link "Sign in with Spotify"
    expect(current_path).to eq("/")
    expect(page).to have_content("Sign Out")

    scenario "can handle authentication error" do
      OmniAuth.config.mock_auth[:spotify] = :invalid_credentials
      visit '/'
      page.should have_content("Sign in with Spotify")
      click_link "Sign in"
      page.should have_content('Authentication failed.')
    end

  end
end
