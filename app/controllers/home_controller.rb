class HomeController < ApplicationController
	def index

		@user = User.first

		u = User.find(session[:user_id])
		@topHipsters = u.friends.order(:score)


	end

	def facebook_auth
		# @graph = Koala::Facebook::API.new
	end

end