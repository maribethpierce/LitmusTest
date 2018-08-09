class MessagesController < ApplicationController

	def index
		@messages = Message.order(updated_at: :desc).limit(10)
		@status = Status.first.status_report
	end
end