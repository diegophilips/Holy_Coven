class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def about
  end

  def dashboard
    @user = current_user
    @user_projects = @user.projects
    @user_bookings = @user.bookings

  end

end
