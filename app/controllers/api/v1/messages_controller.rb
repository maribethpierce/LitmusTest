class Api::V1::MessagesController < ApplicationController
	def index
		render json: Message.order(updated_at: :desc).limit(10)
	end
	def create
		@message = Message.new(message_params)
		if @message.save
			redirect_to '/messages', notice: 'Message added successfully.'
		else
			render action: 'new'
		end
		
	end

	private

	def message_params
		params.require(:message).permit(:body, :status_id)
	end
end