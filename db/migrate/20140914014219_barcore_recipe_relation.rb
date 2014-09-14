class BarcoreRecipeRelation < ActiveRecord::Migration
  def change
    create_table :barcores_recipes, id: false do |t|
      t.belongs_to :barcore
      t.belongs_to :recipe
    end
  end
end
