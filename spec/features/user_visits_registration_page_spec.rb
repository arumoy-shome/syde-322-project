require "rails_helper"

feature "User visits registration page" do
  scenario "successfully" do
    visit new_user_path

    expect(page).to have_css("h1", text: "Register")
  end

  scenario "registers successfully" do
    user = build(:user)

    visit new_user_path
    fill_in("Name", with: user.name)
    fill_in("Email", with: user.email)
    fill_in("Password", with: user.password_digest)
    click_button "Register"

    expect(page).to have_css("h3", text: "Sign In")
  end

  scenario "registers unsuccessfully" do
    user = build(:user)

    visit new_user_path
    fill_in("Email", with: user.email)
    fill_in("Password", with: user.password_digest)
    click_button "Register"

    expect(page).to have_css("li", text: "Name can't be blank")
  end
end
