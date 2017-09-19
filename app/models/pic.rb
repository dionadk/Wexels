class Pic < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_many :tags

end
