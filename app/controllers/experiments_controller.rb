class ExperimentsController < ApplicationController
  before_action :require_login

  def index
    @experiments = Experiment.all.reverse
    render :index
  end

  def show
    @experiment = Experiment.find(params[:id])
  end

  def update
    @experiment = Experiment.find(params[:id])
    @user = User.find(session[:user_id])
    @experiment.users << @user
    @experiment.staff_needed = @experiment.staff_needed - 1
    @experiment.save
    respond_to do |format|
      format.js
    end
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

  def require_login
    unless current_user
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_path # halts request cycle
    end
  end
end
