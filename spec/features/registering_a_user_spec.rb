require "rails_helper"

feature "registering a user", js: true do
  context "successful registration" do
    scenario "visitor registers for EARP" do
      visit new_user_path
      click_on("Register")
      within(".new_user") do
        fill_in "user[name]", with: "Brianna"
        fill_in "user[email]", with: Faker::Internet.free_email
        fill_in "user[password]", with: "123"
        select "EA staff", from: 'user[role]'
        click_on "Register"
      end
      expect(page).to have_content "Experiment Board"
    end
  end

  context "unsuccessful registration" do
    scenario "visitor unsuccessfully registers for EARP" do
      visit new_user_path
      click_on("Register")
      within(".new_user") do
        fill_in "user[name]", with: "Brianna"
        fill_in "user[email]", with: ""
        fill_in "user[password]", with: "123"
        select "EA staff", from: 'user[role]'
        click_on "Register"
      end
      expect(page).to have_content "You must include a valid name, email, and password"
    end
  end
end
