class V1::UsersController < ApplicationController
  def index
		@users = User.all

		render json: @users
	end

	def create
		@user = User.new(user_params)

		@user.save
		render json: @user
	end

	def createuser
		@user = User.new(phoneno: params[:phoneno] , password: params[:password])
		if @user.save
			render json: @user
		else
			render json: "-1"
		end
	end

	def checklogin
		@user = User.where(phoneno: params[:phoneno] , password: params[:password])
		
		if @user.any?
			render json: @user
		else
			render json: "1"
		end
	end

	def alreadyexist
		@user = User.where(phoneno: params[:phoneno])
		if @user.any?
			render json: "-1"
		else
			render json: "1"
		end
	end

	private

	def user_params
		params.require(:user).permit(:phoneno, :password)
	end
end
