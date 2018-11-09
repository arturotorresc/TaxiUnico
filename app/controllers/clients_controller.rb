class ClientsController < ApplicationController

	def show
		@client = Client.find(params[:id])

		# Avoid users to enter profile page of other users.
		unless @client == current_client
			# redirect_to cars_path
		end
	end

end