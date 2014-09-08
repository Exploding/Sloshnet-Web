class BarcoreBasePumpRelationship < ActiveRecord::Migration
  def change
    change_table :pumps do |t|
      t.belongs_to :barcore
      t.belongs_to :bases
    end
  end
end
