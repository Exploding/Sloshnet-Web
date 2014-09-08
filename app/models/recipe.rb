class Recipe < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :bases, through: :ingredients, source: :base
  has_many :ingredients
end
