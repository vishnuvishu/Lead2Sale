class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user! #to call authentication before action

  before_filter :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :phone, :role_id])
  	end 
  	#to permit additional parameters (the lazy way)

  	
  		rescue_from CanCan::AccessDenied do |exception|
	      respond_to do |format|
	        format.json { head :forbidden, content_type: 'text/html' }
	        format.html { redirect_to main_app.root_url, notice: 'You are not authorised to access this page' }
	        format.js   { head :forbidden, content_type: 'text/html' }
	      end
    	end
	
end




