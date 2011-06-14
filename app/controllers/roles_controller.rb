class RolesController < ApplicationController
  before_filter :get_projects

  def index
    @roles = Role.all
  end
  
  def show
    @role = Role.find(params[:id])
  end 
  
  def new
    @role = Role.new
  end
  
  def edit
    @role = Role.find(params[:id])
  end
  
  def create
    @role = Role.new(params[:role])
    if @role.save
      redirect_to roles_path
    else
      render :new
    end
  end
  
  def update
    @role = Role.find(params[:id])

    if @role.update_attributes(params[:role])
      redirect_to roles_path
    else
      render :edit
    end
  end
  
  def destroy
    @role = Role.find(params[:id])
    @role.destroy

    redirect_to roles_path
  end
  
private
  
  def get_projects
    @projects = Project.all
  end
  
end
