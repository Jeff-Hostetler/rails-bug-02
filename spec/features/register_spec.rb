require "rails_helper"

feature "register" do

  scenario "User signs up with valid info" do
    visit root_path
    click_on "Register"
    fill_in "Name", with: "Test"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "test"
    fill_in "Confirm", with: "test"
    within(".registration-form") {click_on "Register"}
  
    expect(page).to have_content("You are logged in successfully")
  end

end
