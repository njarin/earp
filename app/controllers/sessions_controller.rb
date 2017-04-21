class SessionsController < ApplicationController
  include SessionsHelper

  def new
    return redirect_to experiments_path if current_user
  end

  def create
    user = User.find_by(email: login_params[:email])
      if user && user.authenticate(login_params[:password])
        session[:user_id] = user.id

#TOGGLE BELOW COMMENTS FOR AJAXIFY!
        redirect_to experiments_path
        # render experiments_path
      else
#TOGGLE BELOW COMMENTS FOR AJAXIFY!
        redirect_to new_session_path
        # render new_sessions_path
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
