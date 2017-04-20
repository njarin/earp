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
                                        contact_info: "this is the contact info",
                                        owner_id: 1 )}

  describe '#index' do
    it 'renders a list of articles' do
      expect(get :index).to render_template(:index)
    end
  end

  describe 'GET #show' do
  end

end
