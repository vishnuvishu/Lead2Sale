class HomeController < ApplicationController
  def index
	@prospects = (current_user.role? "Sales Manager") ? Prospect.all : current_user.prospects
  	@customers = (current_user.role? "Sales Manager") ? Customer.all : current_user.customers
  	@users = User.all
  	@stages = Stage.all
  	@roles = Role.all
  end
end
