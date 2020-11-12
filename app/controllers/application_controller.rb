class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	
	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number])
	end
end
