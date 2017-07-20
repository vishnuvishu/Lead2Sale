class CustomersController < ApplicationController

	load_and_authorize_resource
	
	def index
		@customers = Customer.all
	end

	def show
		@customer = Customer.find(params[:id])
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def update
		@customer = Customer.find(params[:id])
		if @customer.update_attributes(customer_params)
			redirect_to customer_path(@customer), notice:" successfully updated"
		else
			render action: "edit"
		end
	end

	def destroy
		@customer = Customer.find(params[:id])
		if @customer.destroy
			redirect_to customers_path, notice: "Successfully seleted deleted customer"
	
		else
		redirect_to :back
		end
	end

	private

	def customer_params
		params[:customer].permit(:full_name, :email, :phone, :location, :managed_by)
	end
end
