require 'spec_helper'

feature "name input" do

  scenario "has a form" do
    visit('/')
    expect(page).to have_field(:player1)
    expect(page).to have_selector("form")
  end

  scenario "player 1 and 2's names are displayed" do
    visit('/')
    fill_in 'player1', with: 'July'
    fill_in 'player2', with: 'Jill'
    click_button 'Submit'
    expect(page).to have_content("Welcome July and Jill")
  end
end
