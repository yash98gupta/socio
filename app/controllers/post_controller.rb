class PostController < ApplicationController

  def index
    @post=Post.new
    @Allpost=Post.all
    @comment=Comment.new
    @like=Like.new
    @user=User.all
    #@postlike=Post.find(params[:id])
    #@likecount=Like.where(post_id: @postlike).length
  end

  def create
    Post.create(
      content: params[:post][:content],
      user_id: current_user.id
    )
    redirect_to action:'index'
  end

  def edit
    @post=Post.find(params[:id])
  end

  def update
    @post=Post.find(params[:id])
    @post.update(
      content: params[:post][:content],
      user_id: current_user.id
    )
    redirect_to action:'index'
  end

  def destroy
    @post=Post.find(params[:id]).destroy
    redirect_to action:'index'
  end

end
