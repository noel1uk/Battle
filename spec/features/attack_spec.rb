require 'spec_helper'

feature "attacking" do

  scenario "page displays an attack button" do
    sign_in_and_play
    expect(page).to have_selector("form")
  end
  scenario "player 1 can press attack button to attack player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("You have attacked player 2")
  end
end
