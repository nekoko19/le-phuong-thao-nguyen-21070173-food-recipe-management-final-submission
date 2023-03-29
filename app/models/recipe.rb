class Recipe < ApplicationRecord
  belongs_to :category
  has_many :reviews
  validates_uniqueness_of :title
end
