class HomeController < ApplicationController
	def index
		#dummy test:
		@user = User.first
		# @oauth = Koala::Facebook::OAuth.new(568118486570040, aa1fd631aa1c840b394348303d961961, action: facebook_auth)
											#app id          #app secret 						#callback url

		#@topHipsters = User.find(:all, :order => 'score', :limit => 10)
	end

	def facebook_auth
		# @graph = Koala::Facebook::API.new
	end

end