class Ingredient < ActiveRecord::Base
  belongs_to :base
  belongs_to :recipe
end
