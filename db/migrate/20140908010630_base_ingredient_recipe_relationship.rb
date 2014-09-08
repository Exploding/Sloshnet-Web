class BaseIngredientRecipeRelationship < ActiveRecord::Migration
  def change
    change_table :ingredients do |t|
      t.belongs_to :base
      t.belongs_to :recipe
    end
  end
end
