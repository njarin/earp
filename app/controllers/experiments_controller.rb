class ExperimentsController < ApplicationController

  before_action :all_experiments, only: [:index,:show,:create, :update,:new]


  #def index
   # return redirect_to :root unless current_user
    #@experiments = Experiment.all
    #render :index
  #end

  def show
    return redirect_to :root unless current_user
    @experiment = Experiment.find(params[:id])
  end

  def update
    return redirect_to :root unless current_user
    @experiment = Experiment.find(params[:id])
    @user = User.find(session[:user_id])
    @experiment.users << @user
    @experiment.staff_needed = @experiment.staff_needed - 1
    @experiment.save
  end

  def new
    return redirect_to :root unless current_user
  end

  def create
    return redirect_to :root unless current_user
    @experiment = Experiment.new(experiment_params)
    if @experiment.save
      redirect_to experiment_path(@experiment)
    else
      render :new
    end
  end

  private

  def all_experiments
    return redirect_to :root unless current_user
    @experiments = Experiment.all
  end

  def experiment_params
    params.require(:experiments).permit(:title, :summary, :abstract,
    :introduction, :methods, :conclusion, :hypothesis, :observations, :results,
    :contact_info, :staff_needed)
  end

end
