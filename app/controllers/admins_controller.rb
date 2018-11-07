class AdminsController < ApplicationController

	def show
		@admin = Admin.find(params[:id])

		# Avoid users to enter profile page of other users.
		unless @admin == current_admin
			# redirect_to cars_path
		end
	end

end