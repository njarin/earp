class ExperimentsController < ApplicationController
  def index
    @experiments = Experiment.all
    render :index
  end
end
