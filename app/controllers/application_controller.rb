class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  protect_from_forgery with: :exception

  before_action :login_required, :except=>[:new, :create]

  def login_required
    if !logged_in?
      redirect_to login_path, :notice => "log in required"
    end
  end

  def logged_in?
    !!current_user
  end

  helper_method :logged_in?

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
      @current_user
    else
      false
    end
  end

  helper_method :current_user

end
