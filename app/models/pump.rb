class Pump < ActiveRecord::Base
  belongs_to :base
  belongs_to :barcore
end
