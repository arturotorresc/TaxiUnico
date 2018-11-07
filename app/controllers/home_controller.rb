class HomeController < ApplicationController

	def index
		if current_admin
			redirect_to current_admin
		elsif current_client
			redirect_to current_client
		elsif current_driver
			redirect_to current_driver
		end
	end

	def admin
		if not admin_signed_in?
			redirect_to new_admin_session_path
		end	
	end

	def client
		if not client_signed_in?
			redirect_to new_client_session_path
		end
	end

	def driver
		if not driver_signed_in?
			redirect_to new_driver_session_path
		end
	end

	def map
	end
end