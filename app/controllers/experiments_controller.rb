class ExperimentsController < ApplicationController
  def show

  end

  def new
  end

  def create
    @experiment = Experiment.new(experiment_params)
    if @experiment.save
      redirect_to show_path(@experiment)
    else
      render :new
    end
  end

  private
  def experiment_params
    params.require(:experiments).permit(:title, :summary, :hypothesis, :observations, :results, :contact_info, :staff_needed)
  end
end
