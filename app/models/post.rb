class Post < ApplicationRecord
  validates :title, :content, :image, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search
      Post.where('title LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end

  mount_uploader :image, ImageUploader
end
