class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @project.user_id = current_user.id
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end
end
