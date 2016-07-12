require 'rails_helper'

RSpec.feature "user logs in with spotify" do
  scenario "user needs to login" do

  visit root_path
  expect(response).to have_status(200)
  end
end
