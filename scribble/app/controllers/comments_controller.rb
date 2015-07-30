class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @user = User.find(params[:user_id])
    @comment = Comment.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    # @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def create
    @user = User.find(params[:user_id])
    # @post = Post.find(params[:id])
    @comment = Comment.create!(comment_params)
    redirect_to user_comment_path(@user, @comment)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:subject, :comment, :post_id, :user_id)
  end
end
