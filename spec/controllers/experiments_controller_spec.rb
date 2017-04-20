require 'rails_helper'

describe ExperimentsController do

  describe '#index' do
    it 'renders a list of articles' do
      expect(get :index).to render_template(:index)
    end
  end

end
