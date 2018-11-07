class HomeController < ApplicationController

	def index
	end

	def admin
		redirect_to new_admin_session_path
	end

	def client
		redirect_to new_client_session_path
	end

	def driver
		redirect_to new_driver_session_path
	end

	def map
	end
end