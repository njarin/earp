class ExperimentsController < ApplicationController

  def index
    @experiments = Experiment.all
    render :index
  end

  def show
    @experiment = Experiment.find(params[:id])

  end

  def update
    p 'Use below logic when sessions is implemented'
    # @experiment = Experiment.find(params[:id])
    # @user = User.find(session[:user_id])
    # @experiment.users << @user
    # @experiment.staff_needed = @experiment.staff_needed - 1
    # @experiment.save
  end

end
