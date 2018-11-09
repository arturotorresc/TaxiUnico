class DriversController < ApplicationController

	def show
		@driver = Driver.find(params[:id])

		unless @driver == current_driver
			
		end
	end
	
end