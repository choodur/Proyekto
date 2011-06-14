class TicketsController < ApplicationController
  before_filter :get_projects

  def index
    @tickets = Ticket.search(params[:date], params[:status], params[:priority])
    @users = User.search(params[:name])
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
    @ticket = Ticket.new(params[:ticket])
    if @ticket.save
      redirect_to tickets_path
    else
      render :new
    end
  end
  
  def update
    @ticket = Ticket.find(params[:id])

    if @ticket.update_attributes(params[:ticket])
      redirect_to tickets_path
    else
      render :edit
    end
  end
  
  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy

    redirect_to tickets_path
  end
  
private
  
  def get_projects
    @projects = Project.all
  end
end
