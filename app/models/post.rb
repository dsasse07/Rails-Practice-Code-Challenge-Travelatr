class Post < ApplicationRecord
  belongs_to :blogger
  belongs_to :destination

  validates :title, presence: true
  validates :content, presence: true, length: {minimum: 101}
  validates :likes, presence: true

  before_validation :no_likes_yet


  def author_name
    self.blogger.name
  end

  def destination_name
    self.destination.name
  end

  private
  
  def no_likes_yet
  return unless self.likes.nil?
  self.update(likes: 0)
  end




end
