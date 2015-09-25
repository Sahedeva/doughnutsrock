class LoginController < ApplicationController

	def login_form

	end

	def check_login
		user = User.find_by(:email => params[:email])

		if user && user.authenticate(params[:password])
			session[:current_user_id] = user.id

			redirect_to '/'
		else
			redirect_to '/login?err=1'
		end
	end
end
