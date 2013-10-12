class SessionsController < ActionController::Base

	def create
		  auth = request.env["omniauth.auth"]

		  token =  auth.credentials.token

		  user = User.where(:provider => auth['provider'], 
		                    :uid => auth['uid']).first || User.create_with_omniauth(auth)
		  session[:user_id] = user.id

		  http = HTTPClient.new

		  if Rails.env.production?
		  	  base_url = "http://thmc-backend.herokuapp.com/"
		  else
			  base_url = "http://localhost:5000/"
		  end
		  
		  http.get "#{base_url}howhipsteris?fb_id=#{user.id}&access_token=#{token}"


		  redirect_to root_url, :notice => " "
	end

	def new
	  redirect_to '/auth/facebook'
	end

	def destroy
	  session[:user_id] = nil
	  reset_session
	  redirect_to root_url, notice => 'Signed out'
	end
end
