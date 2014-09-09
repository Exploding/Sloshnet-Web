class CreatePumps < ActiveRecord::Migration
  def change
    create_table :pumps do |t|
      t.integer :pump_num
      t.timestamps
    end
  end
end
