class Checkin < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  mount_uploader :image, CheckinUploaderUploader

  validates :comment, presence: true
  validates :image, presence: true

end
