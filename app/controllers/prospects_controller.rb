class ProspectsController < ApplicationController
	
	before_action :authenticate_user!
	load_and_authorize_resource

	def index
		@prospects = (current_user.role? "Sales Manager") ? Prospect.all : current_user.prospects
	end

	def new
		@prospect = Prospect.new
	end

	def create
		@prospects = (current_user.role? "Sales Manager") ? Prospect.all : current_user.prospects
		@prospect = Prospect.new(prospect_params)
		@prospect.save
	end

	def show
		@prospect = Prospect.find(params[:id])
	end

	def edit
		@prospect = Prospect.find(params[:id])
	end

	def update
		@prospect = Prospect.find(params[:id])
		if @prospect.update_attributes(prospect_params)
			redirect_to prospects_path, notice:" successfully updated"
		else
			render action: "edit"
		end
	end

	def destroy
		@prospect = Prospect.find(params[:id])
		@prospect.destroy
	end

	private

	def prospect_params
		params[:prospect].permit(:full_name, :email, :phone, :location, :stage_id, :managed_by)
	end
end
