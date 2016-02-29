require "rails_helper"

feature "User visits sign up page" do
  scenario "successfully" do
    visit new_user_path

    expect(page).to have_css("h1", text: "Sign up")
  end

  scenario "signs up successfully" do
    user = build(:user)

    visit new_user_path
    fill_in("Name", with: user.name)
    fill_in("Email", with: user.email)
    fill_in("Password", with: user.password_digest)
    click_button "Sign up"

    expect(page).to have_css("p", text: "Welcome Dummy User!")
  end

  scenario "signs up unsuccessfully" do
    user = build(:user)

    visit new_user_path
    fill_in("Email", with: user.email)
    fill_in("Password", with: user.password_digest)
    click_button "Sign up"

    expect(page).to have_css("li", text: "Name can't be blank")
  end
end
