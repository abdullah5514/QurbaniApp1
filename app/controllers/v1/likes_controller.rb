class V1::LikesController < ApplicationController
  def index
  end

  def new
  end

  def createlike
  	@post = Post.find(params[:post_id].to_i)
  	@like = @post.likes.create(:user_id => params[:user_id].to_i)
  	if @like.save
  		render :json => "1"
  	else
  		render json: "-1"
  	end
  end

  def getlikescountofpost
  	count = Like.getcount(params[:post_id])
  	if count.present?
  		render json: count
  	else
  		render json: "-1"
  	end
  end

  def getlikesofpost
  	@likes = Like.where(:user_id => params[:user_id] , :post_id => params[:post_id])
  	if @likes.present?
  		render json: @likes
  	else
  		render json: "-1"
  	end
  end
end
