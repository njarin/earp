module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session['user_id'])
  end

  def signed_in?
    session[:user_id] != nil
  end
end
