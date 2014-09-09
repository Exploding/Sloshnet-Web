class Pump < ActiveRecord::Base
  validates :barcore_id, presence: true
  validates :base_id, presence: true
  validates :pump_num, presence: true

  belongs_to :base
  belongs_to :barcore
end
