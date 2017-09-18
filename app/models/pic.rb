class Pic < ApplicationRecord
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :user
end
