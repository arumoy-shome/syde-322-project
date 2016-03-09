require 'rails_helper'

feature "User visits homepage" do
  scenario "successfully" do
    visit root_path

    expect(page).to have_css("h3", text: "Sign In")
  end

  scenario "successfully redirects to registration page" do
    visit root_path
    click_link "Register"

    expect(page).to have_css("h1", text: "Register")
  end
end

feature "User signs in" do
  scenario "successfully" do
    user = create(:user)

    visit root_path
    fill_in("Email", with: user.email)
    fill_in("Password", with: user.password_digest)
    click_button "Sign in"

    expect(page).to have_css("p", text: "Dummy User")
  end

  scenario "unsuccessfully" do
    user = create(:user)

    visit root_path
    fill_in("Email", with: user.email)
    click_button "Sign in"

    expect(page).to have_css("h3", text: "Sign In")
  end
end
