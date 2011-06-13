class ProjectsController < ApplicationController
  before_filter :get_projects

  def index
    @projects = Project.all
  end
  
  def show
    @project = Project.find(params[:id])
  end 
  
  def new
    @project = Project.new
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end
  
  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(params[:project])
      redirect_to projects_path
    else
      render :edit
    end
  end
  
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_path
  end
  
private
  
  def get_projects
    @projects = Project.all
  end
  
end
