class Api:PostsController < ApplicationController
  def index
    render json: User.friend_posts(current_user.friends)
  end

  def my_friends
    render json: User.liked(current_user.friends)
  end

  def update
    current_user.liked_user << params(:id).to_i
    current_user.save 
  end
end
