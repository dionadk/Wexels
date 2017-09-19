class Pic < ApplicationRecord
  has_many :comments
  has_many :tags
  has_many :user,through: :likes

end
