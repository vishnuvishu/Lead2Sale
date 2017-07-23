class StagesController < ApplicationController

	load_and_authorize_resource
	
	def index
		@stages = Stage.all
	end

	def new
		@stage = Stage.new
	end

	def create
		@stage = Stage.new(stage_params)
		@stage.save
	end

	def show
		@stage = Stage.find(params[:id])
	end

	def edit
		@stage = Stage.find(params[:id])
	end

	def update
		@stage = Stage.find(params[:id])
		if @stage.update_attributes(stage_params)
			redirect_to stages_path, notice:" successfully updated"
		else
			render action: "edit"
		end
	end

	def destroy
		@stage = Stage.find(params[:id])
		@stage.destroy
	end

	private

	def stage_params
		params[:stage].permit(:name, :description, :interest_level)
	end
end
