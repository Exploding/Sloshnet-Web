class Pump < ActiveRecord::Base
  validates :barcore_id, presence: true
  validates :base_id, presence: true
  validates :pump_num, presence: true
  validates :pump_num, uniqueness: { scope: :barcore_id,
      message: 'can only have one pump with a given pump_num per barcore' }

  belongs_to :base
  belongs_to :barcore
end
