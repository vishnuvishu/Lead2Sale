class HomeController < ApplicationController
  def index
  	@prospects = Prospect.all
  	@customers = Customer.all
  	@roles = Role.all
  	@stages = Stage.all
  end
end
