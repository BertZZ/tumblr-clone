require 'rails_helper'

feature 'Sign Up' do
  scenario 'A user signs up' do
    visit '/'
    click_link 'Sign Up'
    fill_in :user_username, with: 'BertZ'
    fill_in :user_email, with: 'bertie.wooles@gmail.com'
    fill_in :user_password, with: 'Potato123!'
    expect { click_button 'Create Account' }.to change {User.all.count}.by 1
  end
end
