class UsersController < ApplicationController
  def new
    @user = User.new
    render :'users/new'
  end

  def create
    @user = User.new(reg_params)
    if @user.save
      redirect_to new_session_path
    else
      render new_user_path
    end
  end

  private
    def reg_params
      params.require(:user).permit(:role, :name, :email, :password)
    end
end
