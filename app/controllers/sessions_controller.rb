class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by_name(params[:name])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(current_user.id), notice: 'signed in successful'
    else
      flash.now[alert] = 'Invalid username!'
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: 'signed out successfully!'
  end
end
