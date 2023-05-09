class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments

  after_create_commit -> { broadcast_prepend_to "posts", partial: "posts/post", locals: { post: self }, target: "posts" }
end
