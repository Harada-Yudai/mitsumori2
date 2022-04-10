class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :current_user?
  before_action :login_required
  
  private
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def current_user?(user)
    user == current_user
  end

  def login_required
    flash[:notice] = "・ログインしてください "
    redirect_to new_session_path unless current_user
  end

end
