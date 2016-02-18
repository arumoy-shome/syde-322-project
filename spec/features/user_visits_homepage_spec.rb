require 'rails_helper'

feature "User visits homepage" do
  scenario "successfully" do
    visit root_path

    expect(page).to have_css('h1', text: 'Welcome to Tutorify')
  end

  scenario "sucessfully redirects to sign in page" do
    visit root_path
    click_link 'Sign in'

    expect(page).to have_css('h1', text: 'Sign in')
  end

  scenario "sucessfully redirects to sign up page" do
    visit root_path
    click_link 'Sign up'

    expect(page).to have_css('h1', text: 'Sign up')
  end
end
