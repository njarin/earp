class SessionsController < ApplicationController
  def new

  end

  def create
    p login_params
  end

  private
  def login_params
    params.require(:session).permit(:email, :password)
  end
end
