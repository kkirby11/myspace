class AddLikedUsersToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :liked_user, :text
  end
end
