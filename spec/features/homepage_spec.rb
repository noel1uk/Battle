require 'app'
require 'spec_helper'

feature "Page Content" do
  scenario "page has correct content" do
    expect(page).to have_content "Testing infrastructure working!"
  end
end
