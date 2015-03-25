class PostsController < ApplicationController

  before_action do
    :authenticate_user
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Thank you for your post!"
      redirect_to posts_path
    else
      flash[:notice] = "That didn't work."
      redirect_to posts_path
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "You updated your post!"
      redirect_to posts_path
    else
      flash[:notice] = "That didn't work."
      redirect_to posts_path
    end
  end

  def delete
    post = Post.find(params[:id])
    post.destroy
    flash[:notice] = "You deleted your post!"
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:posts).permit(:content, :user_id)
  end

end
