class TicketsController < ApplicationController
  before_filter :get_projects
  before_filter :get_project, :only => [:index, :create]

  def index
    @tickets = @project.tickets
  end
  
  def show
    @ticket = Ticket.find(params[:id])
  end
  
  def new
    @ticket = Ticket.new
  end
  
  def edit
    @ticket = Ticket.find(params[:id])
  end
  
  def create
    @ticket = @project.tickets.build(params[:ticket])
    @ticket.project_id = current_user.id;
    @tickets = @project.tickets
    
    @ticket.save
  end
  
  def update
    @ticket = Ticket.find(params[:id])

    if @ticket.update_attributes(params[:ticket])
      redirect_to projects_path
    else
      render :edit
    end
  end
  
  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy

    redirect_to projects_path
  end
  
private
  
  def get_projects
    @projects = Project.all
  end
  
  def get_project
    @project = Project.find params[:project_id]
  end
end
