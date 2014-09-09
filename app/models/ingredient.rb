class Ingredient < ActiveRecord::Base
  validates :base_id, presence: true
  validates :recipe_id, presence: true
  validates :parts, presence: true

  belongs_to :base
  belongs_to :recipe
end
