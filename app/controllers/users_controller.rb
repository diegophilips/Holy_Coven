class UsersController < ApplicationController

  def index
    @service = Service.find_by(type_of_service: params[:service_name])
    @user = current_user
    # filter to pros only
    if @service
    @pros = @service.users
  else
    @pros = User.where(pro: true)
  end
    render :index
  end

  def show
    # show the profile page
    @users = User.all
    @user = User.find(params[:id])
    @user_projects = @user.projects
    @ongoing_projects = @user_projects.where.not(status: "Completed")
    @completed_projects = @user.projects.where(status: "Completed")
    @latest_release = @completed_projects[-1]
    @userservice = @user.services

    # @bookings = Booking.find(params[:id])
    if @user.pro
      # show pro profile
      render :pro
    else
      # show user profile
      render :show
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save!
      redirect_to user_path(@user)
    else
      render :form
    end
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end

