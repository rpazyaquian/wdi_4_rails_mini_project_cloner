class Comment < ActiveRecord::Base
  validates :text, presence: true
  validates :points, presence: true
end