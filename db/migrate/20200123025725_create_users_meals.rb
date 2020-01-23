class CreateUsersMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :users_meals do |t|
      t.string :user_id
      t.string :meal_id

      t.timestamps
    end
  end
end
