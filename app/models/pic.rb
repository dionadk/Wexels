class Pic < ApplicationRecord
  has_many :comments,dependent: :destroy
  belongs_to :user
  has_many :tags,dependent: :destroy
  has_many :likes,dependent: :destroy
  validates :img_url, :title, presence: true
end
