class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		User.invite!(user_params)
		redirect_to users_path
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to users_path, notice:" Successfully updated user"
		else
			render action: "edit"
		end
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
			redirect_to users_path, notice: "Successfully deleted prospect"
	
		else
		redirect_to :back
		end
	end

	private

	def user_params
		params[:user].permit(:email, :password, :full_name, :phone, :role_id)
	end
end
