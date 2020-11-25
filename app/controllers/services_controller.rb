class ServicesController < ApplicationController


  def index
    @user = current_user
    @services = Service.all
  end
end
