require 'rails_helper'

RSpec.feature 'Sign up', type: :feature do
  background { visit new_user_registration_path }

  scenario 'with valid information' do
    fill_in 'Name', with: 'Said'
    fill_in 'Email', with: 'said@email.com'
    fill_in 'Password', with: 'Password'
    fill_in 'Confirm Password', with: 'Password'

    click_button 'Sign Up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  scenario 'with invalid information' do
    fill_in 'Name', with: 'Said'
    fill_in 'Email', with: 'said@email.com'
    fill_in 'Password', with: 'password'
    fill_in 'Confirm Password', with: 'PASSWORD'

    click_button 'Sign Up'
    expect(page).to have_content('error prohibited this user from being saved')
  end
end
