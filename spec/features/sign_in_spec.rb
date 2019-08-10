require 'rails_helper'

feature 'Sign In' do
  scenario 'A user can sign in' do
    sign_up
    click_link 'Sign In'
    fill_in :username, with: 'Tester'
    fill_in :password, with: 'Potato123!'
    click_button 'Login'
    expect(page).to have_content("Welcome Tester")
  end
end
