class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  validates :name, presence: true
  validates :country, presence: true

  def featured_post
      self.posts.max_by(&:likes)
  end

  def average_poster_age
    self.bloggers.sum(&:age) / self.bloggers.count
  end
end
