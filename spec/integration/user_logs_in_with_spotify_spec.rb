require 'rails_helper'

RSpec.feature "user logs in with spotify" do
  scenario "user needs to login" do

  visit root_path
  # expect(response).to have_status(200)
  expect(response).to have_http_status(:success)

  click_link "Sign in with Spotify"
  expect(current_path).to eq("")
  end
end
