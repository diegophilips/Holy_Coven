class UsersController < ApplicationController

  def index
    # filter to pros only
    @pros = User.where(pro: true)
    render :index
  end

  def show
    # show the profile page
    @users = User.all
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

