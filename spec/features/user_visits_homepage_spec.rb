require 'rails_helper'

feature "User visits homepage" do
  scenario "successfully" do
    visit root_path

    expect(page).to have_css('h1', text: 'Welcome to Tutorify')
  end

  scenario "successfully redirects to registration page" do
    visit root_path
    click_link 'Register'

    expect(page).to have_css('h1', text: 'Register')
  end
end
