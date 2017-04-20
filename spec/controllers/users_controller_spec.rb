require 'rails_helper'

describe UsersController do
  describe "UsersController#new" do
    it 'renders the registration form' do
      expect(get :new).to render_template :new
    end
  end
end
