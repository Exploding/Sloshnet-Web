class Base < ActiveRecord::Base
  has_many :recipes, through: :ingredients
end
