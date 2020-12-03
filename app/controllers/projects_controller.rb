class ProjectsController < ApplicationController
  before_action :signed_in
  def index
    @projects = Project.all
    @user = current_user

  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    @project.start_date = Date.today
    if @project.save
      redirect_to project_path(@project), notice: 'Your project has been created!'
    else
      render :new
    end
  end


  def edit
    @project = Project.find(params[:id])
  end

  def update
      @project = Project.find(params[:id])
      if @project.update(project_params)
        redirect_to project_path(@project), notice: 'Your project was successfully modified'
      else
        render :edit
      end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Your project has been deleted"
    redirect_to dashboard_path
  end


  private

  def signed_in
    @user = current_user
  end

  def project_params
    params.require(:project).permit(:title, :description, :genre, :status, :photo)
  end
end
