class CommentsController < ApplicationController

  def create
		if (params[:comment][:parent_type] == 'post')
			@parent = Post.find(params[:comment][:parent_id])
		else
			@parent = Comment.find(params[:comment][:parent_id])
		end

		@comment = Comment.create(
				content: params[:comment][:content],
				user_id: current_user.id,
				parent: @parent
			)
      @like=Like.new
      redirect_to post_index_path
    end


      def edit
        @comment=Comment.find(params[:id])
      end

      def update
        @comment=Comment.find(params[:id])
        @comment.update(
          content: params[:comment][:content],
          user_id: current_user.id
        )
        redirect_to post_index_path
      end

      def destroy
        @comment=Comment.find(params[:id]).destroy
        redirect_to post_index_path
      end
	end
