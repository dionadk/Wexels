class Pic < ApplicationRecord

#   def self.search(search)
#   where("name ILIKE ? OR tags ILIKE ? OR instructions ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
# end
  has_many :comments ,dependent: :destroy
  belongs_to :user
  has_many :tags ,dependent: :destroy
  has_many :likes ,dependent: :destroy


end
