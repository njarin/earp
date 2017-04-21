require 'rails_helper'

feature 'login', js: true do
  it 'valid user can log in' do
    visit root_path

    fill_in 'session_email', with: 'staff@example.com'
    fill_in 'session_password', with: 'password'

    find('input[name="commit"]').click
    expect(current_path).to eq experiments_path
  end

  it "invalid user can't log in" do
    visit root_path

    fill_in 'session_email', with: 'staff@example.com'
    fill_in 'session_password', with: 'elephants are large'

    find('input[name="commit"]').click
    expect(current_path).to eq sessions_path
  end
end

feature 'logout', js: true do
  it 'Logged in user can log out' do
    visit root_path

    fill_in 'session_email', with: 'staff@example.com'
    fill_in 'session_password', with: 'password'

    find('input[name="commit"]').click
    click_link('Logout')
    expect(current_path).to eq root_path

  end
end
