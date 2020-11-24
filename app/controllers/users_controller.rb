class UsersController < ApplicationController

  def index
    # filter to pros only
    @users = User.where(pro: true)
  end

  def show
    # show the profile page
    @user = User.find(params[:id])
    if @user.pro
      # show pro profile
      render :pro
    else
      # show user profile
      render :show
    end
  end
end

