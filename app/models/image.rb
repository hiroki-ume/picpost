class Image < ApplicationRecord
  validates :image, presence: true
  attachment :image
  has_many :comments, dependent: :destroy
  belongs_to :user
end
