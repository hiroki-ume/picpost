class CommentsController < ApplicationController
  def create
    image = Image.find(params[:image_id])
    comment = current_user.comments.new(comment_params)
    comment.image_id = image.id
    comment.save
    redirect_to :images
  end
  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
