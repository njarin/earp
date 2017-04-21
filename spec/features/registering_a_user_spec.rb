require "rails_helper"

feature "registering a user", js: true do
  context "successful registration" do
    scenario "visitor registers for EARP" do
      visit '/users/new'
      click_on("Register")
      within(".new_user") do
        fill_in "#user_name", with: "Brianna"
        fill_in "#user_email", with: "bribri@bmail.com"
        fill_in "#user_password", with: "123"
        find("#role").find(:xpath, 'option[2]').select_option
      end
      p "YEAH WE DID IT"
    end
  end

  context "unsuccessful registration" do

  end
end
