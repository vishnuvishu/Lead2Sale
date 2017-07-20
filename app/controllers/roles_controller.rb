class RolesController < ApplicationController

	load_and_authorize_resource
	
	def index
		@roles = Role.all
	end
end
