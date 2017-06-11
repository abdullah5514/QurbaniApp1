class V1::PostsController < ApplicationController
  def index
  	@posts = Post.all
    if @posts.present?
  	 render json: @posts
    else
      render json: "-1"
    end
  end

  def new
  end

  def createpost
  	#debugger
  	@user = User.find(params[:user_id].to_i)
  	@post = @user.posts.build(:imagekey => params[:imagekey] , description: params[:description] , :user_id => params[:user_id].to_i , :category => params[:category])
  	if @post.save
  		render json: "1"
  	else
  		render json: "-1"
  	end
  end

  def getuserposts
  	@posts = Post.where(:user_id => params[:user_id])
  	if @posts.any?
  		render json: @posts
  	else
  		render json: "-1"
  	end

  end

  def getspecificanimal
    @posts = Post.where(:category => params[:category])
    if @posts.pressent?
      render json: @posts
    else
      render json: "-1"
    end
  end

  private
	def permit_post
		params.require(:post).permit(:imagekey,:description,:user_id , :category)
	end
end
