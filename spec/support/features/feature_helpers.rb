module FeatureHelpers
  def sign_up
    visit '/'
    click_link 'Sign Up'
    fill_in :user_username, with: 'Tester'
    fill_in :user_email, with: 'Test@Test.com'
    fill_in :user_password, with: 'Potato123!'
    click_button 'Create Account'
  end
end
