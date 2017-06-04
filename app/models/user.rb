class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, :class_name => "Post", :foreign_key => "user_id"

  has_many :comments, :class_name => "Comment", :foreign_key => "user_id"

  has_many :likes, :class_name => "Like", :foreign_key => "user_id"

  has_many :liked_posts, :through => :likes, :source => :post

  validates :username, :presence => true, :uniqueness => true

end
