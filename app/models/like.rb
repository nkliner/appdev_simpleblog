class Like < ApplicationRecord

  belongs_to(:user, :class_name => "User", :foreign_key => "user_id")

  belongs_to(:post, :class_name => "Post", :foreign_key => "post_id")

  validates :user_id, :presence => true, :uniqueness => { :scope => :post }

  validates :post_id, :presence => true

end
