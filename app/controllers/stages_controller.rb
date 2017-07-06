class StagesController < ApplicationController
	def index
		@stages = Stage.all
	end

	def new
		@stage = Stage.new
	end

	def create
		@stage = Stage.new(stage_params)
		if @stage.save
			redirect_to stages_path, notice: "stages successfully created"
		else
			render action: "new"
		end
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
			redirect_to stage_path(@stage), notice:" successfully updated"
		else
			render action: "edit"
		end
	end

	def destroy
		@stage = Stage.find(params[:id])
		if @stage.destroy
			redirect_to stages_path, notice: "Successfully seleted deleted stage"
	
		else
		redirect_to :back
		end
	end

	private

	def stage_params
		params[:stage].permit(:name, :description, :interest_level)
	end
end
