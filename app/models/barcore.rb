class Barcore < ActiveRecord::Base
  validates :name, presence: true
  has_many :bases, through: :pumps, source: :base
end
