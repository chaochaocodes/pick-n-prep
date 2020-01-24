class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :ingredient
      t.integer :cuisine_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
