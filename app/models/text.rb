class Text < ApplicationRecord
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
  validates :title, :content, presence: true
  belongs_to :user
end
