class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  
  def show
    @comment = Comment.find(params[:id])
  end
  
  def new
    @comment = Comment.new
  end
  
  def edit
    @comment = Comment.find(params[:id])
  end
  
  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to comments_path
    else
      render :new
    end
  end
  
  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(params[:comment])
      redirect_to comments_path
    else
      render :edit
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to comments_path
  end
end
