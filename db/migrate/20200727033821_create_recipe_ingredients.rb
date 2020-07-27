class CreateRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe, null: false, foreign_key: true, index: true
      t.references :ingredient, null: false, foreign_key: true, index: true
      t.integer :amount
      t.integer :amount_unit
      t.string :preparation

      t.timestamps
    end
  end
end
