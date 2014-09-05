class Base < ActiveRecord::Base
  has_many :recipes, through: :ingredients
  has_many :barcores, through: :pumps
end
