class UserController < ApplicationController

	def new
		message = User.new(name: params[:name], email: params[:email], message: params[:message])
		message.save
		respond_to do |format|
			format.html { redirect_to request.referrer}
		end	


		Mailer.send_message(params[:name], params[:email], params[:message]).deliver
		Mailer.send_notification(params[:name], params[:email], params[:message]).deliver

	end

	def admin
		if params[:password] == "Superman08@"
			respond_to do |format|
				format.html { redirect_to message_path}
			end	
		end
	end

	def index
		@users = User.all
	end

end
