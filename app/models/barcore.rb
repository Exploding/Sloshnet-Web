class Barcore < ActiveRecord::Base
  validates :name, presence: true

  has_many :bases, through: :pumps, source: :base
  has_many :pumps

  has_and_belongs_to_many :queued_recipes, class_name: 'Recipe'
end
