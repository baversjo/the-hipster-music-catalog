class HomeController < ApplicationController
	def index
		@fb_id = -1
		if !session[:user_id].nil?
			@u = User.find(session[:user_id])
			@topHipsters = @u.friends.where("score IS NOT NULL").order('score desc').limit(20)
			@fb_id = @u.id
		end
		@globalTopHipsters = User.where("score IS NOT NULL").order('score desc').limit(20)
	end

end