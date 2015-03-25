class CommentsController < ApplicationController

  def update
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_path(@comment.post.id)
    end
  end

end
