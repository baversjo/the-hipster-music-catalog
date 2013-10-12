class User < ActiveRecord::Base

  has_many :friendships
  has_many :friends, :through => :friendships

	def self.create_with_omniauth(auth)
  		create! do |user|
  			user.id = auth['uid']
			user.provider = auth['provider']
		    user.uid = auth['uid']

		    if auth['info']
		      user.name = auth['info']['name'] || ""
		      user.email = auth['info']['email'] || ""
		    end
	  end
	end

end