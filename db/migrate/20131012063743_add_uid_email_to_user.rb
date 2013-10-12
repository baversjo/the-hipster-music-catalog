class AddUidEmailToUser < ActiveRecord::Migration
  def change
    add_column :users, :uid, :string
    add_column :users, :email, :string
  end
end
