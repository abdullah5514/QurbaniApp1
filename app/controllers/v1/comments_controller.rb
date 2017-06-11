class V1::CommentsController < ApplicationController
  def index
  end

  def new
  end

  def createcomment
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.build(permit_comment)
  	debugger
  	
  	if @comment.save
  		render json: @comment
  	else
  		render json: "-1"
  	end
  end

  private
	def permit_comment
		params.require(:comment).permit(:commentbody , :post_id , :user_id)
	end
end
