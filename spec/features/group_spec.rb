require 'rails_helper'

RSpec.feature 'Groups', type: :feature do
  background do
    visit new_user_registration_path
    fill_in 'Name', with: 'Said'
    fill_in 'Email', with: 'said@email.com'
    fill_in 'Password', with: 'Password'
    fill_in 'Confirm Password', with: 'Password'
    click_button 'Sign Up'

    visit groups_path
  end

  scenario 'show groups_path' do
    expect(page).to have_content('Total Expenses')
  end

  scenario 'show user name' do
    expect(page).to have_content('Said')
  end

  scenario 'show user image' do
    expect(page).to have_css('img')
  end
end
