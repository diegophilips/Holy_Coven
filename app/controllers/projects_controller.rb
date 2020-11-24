class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @user = @project.user
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to projects_path, notice: 'Your project has been created!'
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
    flash[:notice] = "Your project has been destroy"
    redirect_to dashboard_path
  end


  private

  def project_params
    params.require(:project).permit(:title, :description, :start_date, :genre, :status)
  end
end
