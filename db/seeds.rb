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

brekkie = Meal.create(meal_type: "Breakfast")
lunch = Meal.create(meal_type: "Lunch")
dinner = Meal.create(meal_type: "Dinner")
dessert = Meal.create(meal_type: "Dessert")
drinks = Meal.create(meal_type: "Drinks")
apps = Meal.create(meal_type: "Appetizers")


Dish.create(name: "Beef Noodle Soup", ingredient: "beef shank, spicy bean paste, flat noodles", cuisine_id: ch.id, meal_id: lunch.id)
Dish.create(name: "Bubble Tea", ingredient: "boba, black tea, sugar", cuisine_id: ch.id, meal_id: drinks.id)
Dish.create(name: "Congee", ingredient: "rice, water, century egg, gluten, chicken", cuisine_id: ch.id, meal_id: brekkie.id)
Dish.create(name: "Soup Dumplings", ingredient: "filling, dumpling skin", cuisine_id: ch.id, meal_id: apps.id)
Dish.create(name: "Peking Duck", ingredient: "duck", cuisine_id: ch.id, meal_id: dinner.id)
Dish.create(name: "Sushi", ingredient: "tuna, sushi rice", cuisine_id: jp.id, meal_id: lunch.id)
Dish.create(name: "Ramen", ingredient: "shoyu broth, noodles, tonkatsu, egg", cuisine_id: jp.id, meal_id: dinner.id)
Dish.create(name: "Sake", ingredient: "fermented rice", cuisine_id: jp.id, meal_id: drinks.id)
Dish.create(name: "Butter Chicken", ingredient: "butter, chicken, rice", cuisine_id: ia.id, meal_id: dinner.id)
Dish.create(name: "Naan", ingredient: "dough", cuisine_id: ia.id, meal_id: apps.id)
Dish.create(name: "Daal", ingredient: "lentil", cuisine_id: ia.id, meal_id: apps.id)
Dish.create(name: "Samosa", ingredient: "spiced potatoes, onions, peas, meat, lentils", cuisine_id: ia.id, meal_id: apps.id)
Dish.create(name: "Scrambled Eggs", ingredient: "eggs, butter", cuisine_id: us.id, meal_id: brekkie.id)
Dish.create(name: "Brownies", ingredient: "cocoa powder, water, egg", cuisine_id: us.id, meal_id: dessert.id)
Dish.create(name: "Beer", ingredient: "malted malted barley, though wheat, maize, or rice", cuisine_id: us.id, meal_id: drinks.id)
Dish.create(name: "Moscow Mule", ingredient: "vodka, ginger beer", cuisine_id: us.id, meal_id: drinks.id)
Dish.create(name: "Chicken Noodle Soup", ingredient: "chicken, broth, soup", cuisine_id: us.id, meal_id: apps.id)
Dish.create(name: "Salmon steak", ingredient: "salmon", cuisine_id: us.id, meal_id: dinner.id)
Dish.create(name: "Spaghetti & Meatballs", ingredient: "thin spaghetti pasta, tomato sauce, meatballs", cuisine_id: it.id, meal_id: dinner.id)
Dish.create(name: "Mushroom Risotto", ingredient: "sliced mushrooms, shallots, white wine, arborio rice", cuisine_id: it.id, meal_id: dinner.id)
Dish.create(name: "Gelato", ingredient: "milk, sugar, fruit puree", cuisine_id: it.id, meal_id: dessert.id)
Dish.create(name: "Chocolate Croissant", ingredient: "chocolate, butter, pastry dough", cuisine_id: fr.id, meal_id: brekkie.id)
Dish.create(name: "Macaron", ingredient: "almond meal, sugar, egg white, butter, cream", cuisine_id: fr.id, meal_id: dessert.id)
Dish.create(name: "Duck Confit", ingredient: "duck legs, duck fat, garlic, bay leaf, pepper", cuisine_id: fr.id, meal_id: dinner.id)
Dish.create(name: "Crepe", ingredient: "egg, flour, sugar, butter", cuisine_id: fr.id, meal_id: brekkie.id)

puts  "seed complete"
