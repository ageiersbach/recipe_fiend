class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.string :name
      t.integer :preheat_temp
      t.boolean :preheat_celcius, null: false, default: false

      t.timestamps
    end
  end
end
