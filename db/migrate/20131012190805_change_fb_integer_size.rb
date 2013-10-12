class ChangeFbIntegerSize < ActiveRecord::Migration
  def change
  	change_column :users, :id, :bigint
  end
end
