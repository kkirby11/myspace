class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :posts

  serialize :friends, Array

  def friend_posts(ids)
    ids = ids.empty? ? [0] : ids
    Posts.where("id IN (?)", id)
  end

  def self.liked
    ids = ids.empty? ? [0] : ids
    User.where("id IN (?)", id)
  end

end
