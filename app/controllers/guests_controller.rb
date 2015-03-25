class GuestController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = @post.comments.new
  end


end
