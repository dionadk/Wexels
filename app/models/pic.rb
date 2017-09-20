class Pic < ApplicationRecord

#   def self.search(search)
#   where("name ILIKE ? OR tags ILIKE ? OR instructions ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
# end
  has_many :comments
  belongs_to :user
  has_many :tags
  has_many :likes


end
