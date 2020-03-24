class Image < ApplicationRecord
  validates :image, presence: true
  attachment :image
end
