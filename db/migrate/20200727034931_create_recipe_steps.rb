class CreateRecipeSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_steps do |t|
      t.references :recipe, null: false, foreign_key: true, index: true
      t.text :description
      t.integer :sort_number

      t.timestamps
    end
  end
end
