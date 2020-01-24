# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

japanese = Cuisine.create(name: "Japanese")
italian = Cuisine.create(name: "Italian")
american = Cuisine.create(name: "American")
indian = Cuisine.create(name: "Indian")

breakfast = Meal.create(meal_type: "Breakfast")
lunch = Meal.create(meal_type: "Lunch")
dinner = Meal.create(meal_type: "Dinner")
dessert = Meal.create(meal_type: "Dessert")

Dish.create(name: "Spaghetti & Meatballs", ingredient: "Pasta", cuisine_id: italian.id, meal_id: dinner.id)
Dish.create(name: "Sushi", ingredient: "Rice, Salmon", cuisine_id: japanese.id, meal_id: lunch.id)
Dish.create(name: "Butter Chicken", ingredient: "Chicken", cuisine_id: indian.id, meal_id: dinner.id)
Dish.create(name: "Pancakes", ingredient: "pancake batter", cuisine_id: american.id, meal_id: breakfast.id)
Dish.create(name: "Chocolate Lava Cake", ingredient: "cocoa powder", cuisine_id: american.id, meal_id: dessert.id)

puts  "seed complete"
