class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user, :require_logged_in, except: [:new, :create, :home]
  helper_method :current_user, :logged_in?


  def logged_in?
    !!current_user
  end

  private
    def require_logged_in
      redirect_to root_path unless logged_in?
    end
  

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
end
