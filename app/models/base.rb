class Base < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :recipes, through: :ingredients
  has_many :barcores, through: :pumps
end
