# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ch = Cuisine.create(name: "Chinese")
jp = Cuisine.create(name: "Japanese")
ia = Cuisine.create(name: "Indian")
us = Cuisine.create(name: "American")
it = Cuisine.create(name: "Italian")
fr = Cuisine.create(name: "French")

bb = Meal.create(meal_type: "Breakfast")
ll = Meal.create(meal_type: "Lunch")
dd = Meal.create(meal_type: "Dinner")
ss = Meal.create(meal_type: "Dessert")
dranks = Meal.create(meal_type: "Drinks")
apps = Meal.create(meal_type: "Appetizers")

Dish.create(name: "Spaghetti & Meatballs", ingredient: "Pasta", cuisine_id: it.id, meal_id: dinner.id)
Dish.create(name: "Sushi", ingredient: "Rice, Salmon", cuisine_id: jp.id, meal_id: lunch.id)
Dish.create(name: "Butter Chicken", ingredient: "Chicken", cuisine_id: ia.id, meal_id: dinner.id)
Dish.create(name: "Pancakes", ingredient: "pancake batter", cuisine_id: us.id, meal_id: breakfast.id)
Dish.create(name: "Brownies", ingredient: "cocoa powder", cuisine_id: us.id, meal_id: dessert.id)

puts  "seed complete"
