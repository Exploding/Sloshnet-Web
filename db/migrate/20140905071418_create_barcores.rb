class CreateBarcores < ActiveRecord::Migration
  def change
    create_table :barcores do |t|

      t.timestamps
    end
  end
end
