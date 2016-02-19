require "rails_helper"

feature "User visits sign in page" do
  scenario "sucessfully" do
    visit new_session_path

    expect(page).to have_css("h1", text: "Sign in")
  end

  scenario "signs in successfully" do
    user = build(:user)

    visit new_session_path
    fill_in("Email", with: user.email)
    fill_in("Password", with: user.password_digest)
    click_button "Sign in"

    expect(page).to have_css("p", text: "Signed in as: Dummy User")
  end
end
