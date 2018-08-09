class Api::V1::StatusesController < ApplicationController
	
	def update
		@status = Status.first
		@status.update_attributes(status_params)
		if @status.save
			redirect_to '/messages', notice: 'Status updated successfully.'
		else
			redirect_to '/messages', notice: 'Status not updated.'
		end
		
	end

	private

	def status_params
		params.require(:status).permit(:currently_up)
	end
end