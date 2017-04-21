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
    expect(current_path).to eq '/sessions'
  end
end
