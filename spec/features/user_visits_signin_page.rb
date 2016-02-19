require 'rails_helper'

feature "User visits sign in page" do
  scenario "sucessfully" do
    visit new_session_path

    expect(page).to have_css('h1', text: 'Sign in')
  end

  scenario "signs in successfully" do
    visit new_session_path
    fill_in('Email', with: 'arumoy.shome@gmail.com')
    fill_in('Password', with: 'secret00')
    click_button 'Sign in'

    expect(page).to have_css('a', text: 'Sign out')
  end
end
