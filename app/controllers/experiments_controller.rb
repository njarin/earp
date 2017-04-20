class ExperimentsController < ApplicationController

  def index
    @experiments = Experiment.all
    render :index
  end

  def show
    @experiment = Experiment.find(params[:id])
  end

end
