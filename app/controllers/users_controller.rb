class UsersController < ApplicationController
  def new
    @user = User.new
    render :'users/new'
  end

  def create
  end
end
