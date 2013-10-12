class HomeController < ApplicationController
	def index

		@user = User.first

		if !session[:user_id].nil?
			@u = User.find(session[:user_id])
			@topHipsters = @u.friends.order(:score)
		end


	end

	def facebook_auth
		# @graph = Koala::Facebook::API.new
	end

end