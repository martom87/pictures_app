class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validates :picture, presence: true
  validate :picture_size

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "The picture should be less than 5MB")
    end
  end


end
