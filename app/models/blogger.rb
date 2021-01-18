class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

  validates :name, uniqueness: true, presence: true
  validates :age, presence: true, numericality: {greater_than: 0}
  validates :bio, presence: true, length: {minimum: 31}
  
  def total_likes
    self.posts.sum(&:likes)
  end

  def featured_post
    self.posts.max_by(&:likes)
  end

  def top_five
    self.posts.group(:destination).count.sort_by(&:last).reverse.first(5)
  end

  def self.most_posts
    self.all.max_by {|blogger| blogger.posts.count}
  end

  
end
