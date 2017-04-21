require "rails_helper"

xfeature "joining an experiment", js: true do
  include SessionsHelper
  let(:owner) { User.create(email: 'faculty@example.com',
                          name: 'Faculty Member',
                          password: 'password',
                          role: 'owner') }

  let(:staff) { User.create(email: 'staff@example.com',
                          name: 'Established Autogenics Staffmember',
                          password: 'password',
                          role: 'staff')
  }

  let(:experiment) { Experiment.create( title: 'Test Experiment',
                                        summary: 'Test Summary',
                                        staff_needed: 2)
  }

  context "logged in user of role: staff" do
    # before(:each) {
    #   visit new_session_path
    #   fill_in 'Email', with: 'staff@example.com'
    #   fill_in 'Password', with: 'password'
    #   click_on 'Log In'
    #   visit experiment_path(Experiment.last.id)
    # }

    scenario "can see the experiment button when there are open slots" do
      visit new_session_path
      user = User.create(email: 'aaa@example.com',
                          name: 'Established Autogenics Staffmember',
                          password: 'password',
                          role: 'staff')
      page.set_rack_session(user_id: user.id)
      p page.get_rack_session
      p User.find_by(id: user.id)
      p current_user
      # p User.all.first
      # fill_in 'Email', with: 'aaa@example.com'
      # fill_in 'Password', with: 'password'
      # click_on 'Log In'
      # p User.first.authenticate(password: 'password')
      visit experiments_path
      sleep(5)
      expect(page).to have_selector(:link_or_button, 'Join Experiment Staff')
    end

    scenario "can join experiment when there are open slots" do
      click_on 'Join Experiment Staff'
      expect(page).to have_content('Established Autogenics Staffmember')
    end

    scenario "sees one less staff needed for experiment " do
      click_on 'Join Experiment Staff'
      expect('staff-needed').to have_content('0')
    end

    xscenario "can join experiment only once" do

    end

    xscenario "cannot join experiment that is full" do

    end

  end
  context "logged in user of role: owner" do
    xscenario "cannot join experiment" do

    end
  end
end
