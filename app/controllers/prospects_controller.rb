class ProspectsController < ApplicationController
	#before_action :authenticate_user!

	def index
		@prospects = Prospect.all
	end

	def new
		@prospect = Prospect.new
	end

	def create
		@prospect = Prospect.new(prospect_params)
		if @prospect.save
			redirect_to prospects_path, notice: "prospects successfully created"
		else
			render action: "new"
		end
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
			redirect_to prospect_path(@prospect), notice:" successfully updated"
		else
			render action: "edit"
		end
	end

	def destroy
		@prospect = Prospect.find(params[:id])
		if @prospect.destroy
			redirect_to prospects_path, notice: "Successfully seleted deleted prospect"
	
		else
		redirect_to :back
		end
	end

	private

	def prospect_params
		params[:prospect].permit(:full_name, :email, :phone, :location, :stage_id, :managed_by)
	end
end
