class RenameUserIdFromUser < ActiveRecord::Migration
  def change
  	rename_column :users, :user_id, :uid
  end
end
