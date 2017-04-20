class ExperimentsController < ApplicationController

  def index
    @experiments = Experiment.all
    render :index
  end

  def show
    @experiment = Experiment.find(params[:id])
  end

  def new
  end

  def create
    @experiment = Experiment.new(experiment_params)
    if @experiment.save
      redirect_to experiment_path(@experiment)
    else
      render :new
    end
  end

  private
  def experiment_params
    params.require(:experiments).permit(:title, :summary, :abstract,
    :introduction, :methods, :conclusion, :hypothesis, :observations, :results,
    :contact_info, :staff_needed)
  end

end
