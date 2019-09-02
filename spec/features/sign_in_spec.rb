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

  scenario 'A user cannot sign in with incorrect details' do
    sign_up
    click_link 'Sign In'
    fill_in :username, with: 'Tester'
    fill_in :password, with: 'Potato1234!'
    click_button 'Login'
    expect(page).to_not have_content("Welcome Tester")
  end
end
