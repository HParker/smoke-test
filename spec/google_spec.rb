require 'test_helper'

Capybara.app_host = "https://twitter.com/"

RSpec.describe 'twitter', type: :feature, js: true do
  it 'exists' do
    visit('/')
    sleep 1
    click_on("Sports")
    sleep 1
  end

  it 'will not login unauthenticated user' do
    visit('/')
    click_on('Log In')
    fill_in('Phone, email or username', with: 'Foo Bar')
    fill_in('Password', with: 'Foo Bar')
    sleep 1
    click_on('Log in')
    sleep 1
  end
end
