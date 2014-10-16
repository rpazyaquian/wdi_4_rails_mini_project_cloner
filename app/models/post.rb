class Post < ActiveRecord::Base
  validates :link, presence: true
  validates :title, presence: true
  validates :user, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
end