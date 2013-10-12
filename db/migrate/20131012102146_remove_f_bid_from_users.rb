class RemoveFBidFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :fb_id, :string
  end
end
