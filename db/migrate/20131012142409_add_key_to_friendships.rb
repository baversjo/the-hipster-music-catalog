class AddKeyToFriendships < ActiveRecord::Migration
  def up
  	execute "ALTER TABLE friendships ADD PRIMARY KEY (user_id,friend_id);"
  end
end
