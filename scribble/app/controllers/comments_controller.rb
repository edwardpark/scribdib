class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @user = User.find(params[:user_id])
    @comment = Comment.find(params[:id])
  end

  def new
    @user = current_user
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
    @user = User.find(params[:user_id])
    @comment = Comment.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    @post = Post.find(params[:id])
    redirect_to post_comment_path(@post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path
  end

  private
  def comment_params
    params.require(:comment).permit(:subject, :comment, :post_id, :user_id)
  end
end
