class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: login_params[:email])
    if user.authenticate(login_params[:password])
      session[:user_id] = user.id
      redirect_to experiments_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def login_params
    params.require(:session).permit(:email, :password)
  end
end
