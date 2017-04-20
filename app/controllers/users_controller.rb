class UsersController < ApplicationController
  def new
    @user = User.new
    render :'users/new'
  end

  def create
    @user = User.new

  end

  private
    def reg_params
      params.require(:user).permit(:name, :email, :password, :role)
    end
end
