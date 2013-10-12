class User < ActiveRecord::Base
	
  has_and_belongs_to_many(:friends,
    :join_table => "friends",
    :foreign_key => "user_id",
    :association_foreign_key => "friend_id")

	def self.create_with_omniauth(auth)
  		create! do |user|
		user.provider = auth['provider']
	    user.uid = auth['uid']
	    if auth['info']
	      user.name = auth['info']['name'] || ""
	      user.email = auth['info']['email'] || ""
	    end
	  end
	end

end