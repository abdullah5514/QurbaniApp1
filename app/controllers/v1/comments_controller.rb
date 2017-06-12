class V1::CommentsController < ApplicationController
  def index
  end

  def new
  end

  def createcomment
  	@post = Post.find(params[:post_id].to_i)
  	@comment = @post.comments.create(:commentbody => params[:commentbody] , :user_id => params[:user_id].to_i)
  	if @comment.save
  		render :json => @comment
  	else
  		render json: "-1"
  	end
  end

  def getcommentsofpost
  	@post = Post.find(params[:post_id].to_i)
  	@comments = @post.comments.all
  	if @comments.present?
  		render json: @comments
  	else
  		render json: "-1"
  	end
  end
end
