require 'spec_helper'
require File.join(File.dirname(__FILE__), '..','app.rb')


feature "Testing infrastructure", :type => :feature do
  scenario "Can run app and check page content" do
    visit('/')
    expect(page).to have_content("Testing infrastructure working!")
  end
end
