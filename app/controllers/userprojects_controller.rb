class UserprojectsController < ApplicationController


  def create
    @userproject= Userproject.new(userproject_params)
    @userproject_user = current_user
    if @userproject.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def userproject_params
    params.require(:userproject).permit(:project_id)
  end
end
