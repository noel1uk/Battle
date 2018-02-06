require 'spec_helper'

feature "name input" do

  scenario "has a form" do
    visit('/')
    expect(page).to have_field(:player1)
    expect(page).to have_selector("form")
  end

  scenario "player 1 and 2's names are displayed" do
    sign_in_and_play
    expect(page).to have_content("Welcome July Vs Jill")
  end
end
