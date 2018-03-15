class LikeController < ApplicationController

  def likenew
    #@like.save
  #  @likecount=Like.where(post_id: params[:id]).length
    #@like = Like.create(user_id: current_user.id, post_id: params[:id])
    #@likecount=Like.where(user_id: current_user.id).length
#  @likecount=@likecount+1

    if Like.exists?(user_id: current_user.id, post_id: params[:id])
      a=Like.where(user_id: current_user.id, post_id: params[:id])
      a[0].destroy
      # @likecount=@likecount-1
      redirect_to post_index_path
  else
    @like = Like.create(user_id: current_user.id, post_id: params[:id])
    redirect_to post_index_path
end
  #@like = Like.create(user_id: current_user.id, post_id: params[:id])
    #redirect_to post_index_path,(id: post_id)
    #redirect_to :action => action_name,:id => 3
  #  redirect_to like_path(passed_parameter: params[:like][:id])
  end

#   def likecount
#     @post_id=params[:passed_parameter]
#     @likecount=Like.where(post_id:@post_id).length
#     @likecount=@likecount+1
#     redirect_to post_index
# # return RedirectToAction("index", "post");
# # RedirectToAction("action name", "controller name");
#   end
end
