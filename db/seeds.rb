# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cuisine.create(name: "Indian")
Cuisine.create(name: "Japanese")
italian = Cuisine.create(name: "Italian")
meal = Meal.create(meal_type: "Breakfast")
lunch = Meal.create(meal_type: "Lunch")
dinner = Meal.create(meal_type: "Dinner")
Dish.create(name: "Spaghetti & Meatballs", ingredient: "Pasta", cuisine_id: italian.id, meal_id: dinner.id, ease: "Easy")


# User.create(name: "Alicia", trip: "Park City", dietary_restriction: "Lactose")
# User.create(name: "Karen", trip: "Niseko", dietary_restriction: "GF")

# "password_digest"

puts  "seed complete"
