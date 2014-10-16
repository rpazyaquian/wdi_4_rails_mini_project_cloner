class Post < ActiveRecord::Base
  validates :link, presence: true
  validates :title, presence: true
  belongs_to :user
  validates :user, presence: true
  has_many :comments, dependent: :destroy
end