class UsersController < ApplicationController
  def new
    @user = User.new
    render new_user_path
  end

  def create
    @user = User.new(reg_params)
    if @user.save
      session[:user_id] = @user.id
      @experiments = Experiment.all
      render 'experiments/index'
    else
      render new_user_path
    end
  end

  private
    def reg_params
      params.require(:user).permit(:role, :name, :email, :password)
    end
end
