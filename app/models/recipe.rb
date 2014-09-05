class Recipe < ActiveRecord::Base
  has_many :bases, through: :ingredients
end
