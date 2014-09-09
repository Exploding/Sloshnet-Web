class CreateBarcores < ActiveRecord::Migration
  def change
    create_table :barcores do |t|
      t.string :name
      t.timestamps
    end
  end
end
