class LikeController < ApplicationController

  def likenew
    #@like.save
  #  @likecount=Like.where(post_id: params[:id]).length
    #@like = Like.create(user_id: current_user.id, post_id: params[:id])
    #@likecount=Like.where(user_id: current_user.id).length
#  @likecount=@likecount+1
if (params[:like][:parent_type] == 'post')
  #@parent mai like ke parent ki puri details aa rahi hai
  @parent = Post.find(params[:like][:parent_id])
else
  @parent = Comment.find(params[:like][:parent_id])
end
    if Like.exists?(parent: @parent , user_id: current_user.id)
      a=Like.where(parent: @parent , user_id: current_user.id)
      a[0].destroy
      # @likecount=@likecount-1
    else

    @like = Like.create(parent: @parent , user_id: current_user.id)
end
  #@like = Like.create(user_id: current_user.id, post_id: params[:id])
    #redirect_to post_index_path,(id: post_id)
    #redirect_to :action => action_name,:id => 3
  #  redirect_to like_path(passed_parameter: params[:like][:id])
  redirect_to post_index_path
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
