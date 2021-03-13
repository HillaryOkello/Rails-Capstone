module UsersHelper
  def set_user
    @user = User.find(params[:id])
  end

  def start_session(user)
    if user
      session[:user_id] = user.id
      redirect_to user_path(current_user.id), notice: "User #{user.name} account signed up successfully!"
    else
      flash.now[:alert] = 'Username is invalid'
    end
  end

  def require_session
    redirect_to new_user_path, alert: 'Sign Up or Sign In to access this feature!' unless current_user
  end
end
