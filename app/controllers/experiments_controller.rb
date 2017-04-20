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
