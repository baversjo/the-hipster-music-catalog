class HomeController < ApplicationController
	def index
		@fb_id = -1
		if !session[:user_id].nil?
			@u = User.find(session[:user_id])
			@topHipsters = @u.friends.order('score desc').limit(20)
			@fb_id = @u.id
		end
		@globalTopHipsters = User.order('score desc').limit(20)
	end

end