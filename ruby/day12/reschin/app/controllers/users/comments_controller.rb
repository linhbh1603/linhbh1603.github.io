class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
  	@comment = Comment.new(comment_params)
  	@comment.user = current_user
  	@comment.save
  	if @commment.save
  		render partial: 'comments/comment',
  		       localsstatus: :created{ comment: @comment}
  		       status: :created
  	end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :restaurant_id)
  end
end

