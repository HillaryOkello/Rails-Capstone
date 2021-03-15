class UsersController < ApplicationController
  include UsersHelper

  before_action :require_session, except: %i[new create]

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      start_session(@user)
    else
      flash.notice = 'Error'
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
