class UsersController < ApplicationController
  before_filter :get_projects

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  
  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to users_path
    else
      render :edit
    end
  end
 
private
  
  def get_projects
    @projects = Project.all
  end
  
end

