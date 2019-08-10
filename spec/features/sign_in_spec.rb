require 'rails_helper'

feature 'Sign In' do
  scenario 'A user can sign in' do
    sign_up
    click_link 'Sign In'
    fill_in :session_username, with: 'BertZ'
    fill_in :session_password, with: 'Potato123!'
    expect(current_user).to eq(User.last)
  end
end
