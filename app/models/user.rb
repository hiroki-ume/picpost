class User < ApplicationRecord
  validates :name, uniqueness: true
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
  has_many :comments, dependent: :destroy      
  has_many :images
end
