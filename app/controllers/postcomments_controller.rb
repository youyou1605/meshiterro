class PostcommentsController < ApplicationController
  def create
    postimage = Postimage.find(params[:postimage_id])
    comment = current_user.postcomments.new(postcomment_params)
    comment.postimage_id = postimage.id
    comment.save
    redirect_to postimage_path(postimage)
  end

  def destroy
    Postcomment.find(params[:id]).destroy
    redirect_to postimage_path(params[:postimage_id])
  end

  private

  def postcomment_params
    params.require(:postcomment).permit(:comment)
  end
end
