class Comment < ActiveRecord::Base
  validates :text, presence: true
  validates :points, presence: true
  belongs_to :user  # a user writes a comment, this must be true
  belongs_to :post  # a post contains a comment,
  # BUT a comment doesn't necessarily belong to a post
  # a comment's direct parent can be either a post,
  # in which case it is a top-level comment,
  # or it is another comment,
  # in which case it is a nested comment.
end