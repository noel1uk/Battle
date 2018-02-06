require 'spec_helper'

feature "name input" do

  scenario "has a form" do
    visit('/')
    expect(page).to have_field(:Player1)
    expect(page).to have_selector("form")
  end

  scenario "player 1's name is displayed" do
    visit('/')
    fill_in 'Player1', with: 'July'
    fill_in 'Player2', with: 'Jill'
    click_button 'Submit'
    expect(page).to have_content("Welcome July and Jill")
  end
end
