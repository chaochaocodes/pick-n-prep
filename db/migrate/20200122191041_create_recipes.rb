class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.integer :cuisine_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
