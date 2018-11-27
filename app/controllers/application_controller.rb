class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

		def configure_permitted_parameters
			devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :location)}
			devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :location)}
		end
  def flash_class(level)
	  case level
	    when 'notice' then "alert alert-info"
	    when 'success' then "alert alert-success"
	    when 'error' then "alert alert-danger"
	    when 'alert' then "alert alert-warning"
	  end
	end

end
