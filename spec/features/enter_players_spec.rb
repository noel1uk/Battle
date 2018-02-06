require 'spec_helper'

feature "name input" do
  scenario "has a form" do
    visit('/')
    expect(page).to have_field(:Player1)
    expect(page).to have_selector("form")
    p page
  end
end

# it "signs me in" do
#   visit '/sessions/new'
#   within("#session") do
#     fill_in 'Email', with: 'user@example.com'
#     fill_in 'Password', with: 'password'
#   end
#   click_button 'Sign in'
#   expect(page).to have_content 'Success'
# end
# end


#
# visit('/')
# fill_in 'Player1', with: 'July'
# fill_in 'Player2', with: 'Jill'
# puts page.body
# click_button 'Submit'
