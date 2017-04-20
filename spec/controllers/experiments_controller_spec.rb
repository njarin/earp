require 'rails_helper'

describe ExperimentsController do
  let(:experiment) { Experiment.create( title: "this is the title",
                                        summary: "this is the summary",
                                        abstract: "this is the abstract",
                                        introduction: "this is the introduction",
                                        hypothesis: "this is the hypothesis",
                                        methods: "these are the methods",
                                        observations: "these are the observations",
                                        results: "these are the results",
                                        conclusion: "this is the conclusion",
                                        staff_needed: 2,
                                        contact_info: "this is the contact info" )}
  let(:user) { User.create( name: "Geraldine",
                            email: "geraldine@gmail.com",
                            password: "123",
                            role: "staff"
    )}

  describe 'GET #index for a logged user' do
    before(:each){ session[:user_id] = user.id }

    it 'assigns all the experiments as @experiments' do
      get :index
      expect(assigns(:experiments)).to eq Experiment.all
    end

    it 'renders a list of articles' do
      expect(get :index).to render_template(:index)
    end
  end

  xdescribe 'GET #show' do
    it 'responds with status code 200' do
      get :show, params: { id: experiment.id }
      expect(response).to have_http_status 200
    end

    it 'assigns the correct experiment as @experiment' do
      get :show, params: { id: experiment.id }
      expect(assigns(:experiment)).to eq(experiment)
    end

    it 'renders the :show template' do
      get :show, params: { id: experiment.id }
      expect(response).to render_template(:show)
    end
  end

end
