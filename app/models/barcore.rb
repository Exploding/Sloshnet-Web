class Barcore < ActiveRecord::Base
  has_many :bases, through: :pumps
end
