require 'spec_helper'

feature "the home page", :type => :feature do
  scenario "has correct content" do
    visit('/')
    expect(page).to have_content("Testing infrastructure working!")
  end
end
