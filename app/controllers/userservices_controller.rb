class UserservicesController < ApplicationController

  def new
    @userservice = Userservice.new
  end

  def create
    @userservice = Userservice.new(userservice_params)
    @userservice.user = current_user
    if @userservice.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def userservice_params
    params.require(:userservice).permit(:service_id)
  end
end
