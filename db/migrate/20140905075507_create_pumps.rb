class CreatePumps < ActiveRecord::Migration
  def change
    create_table :pumps do |t|

      t.timestamps
    end
  end
end
