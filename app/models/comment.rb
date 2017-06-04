class Comment < ApplicationRecord

  belongs_to(:post, :class_name => "Post", :foreign_key => "post_id")

  belongs_to(:user, :class_name => "User", :foreign_key => "user_id")

  validates :user_id, :presence => true

  validates :post_id, :presence => true

  validates :body, :presence => true

end
