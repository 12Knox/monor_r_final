class Photo < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments
  has_many :likes

  def like_user(user)
   likes.find_by(user_id: user)
  end
end
