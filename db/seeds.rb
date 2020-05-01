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


Recipe.create(title: "Beef Noodle Soup", description: "beef shank, spicy bean paste, flat noodles", cuisine_id: ch.id, meal_id: lunch.id)
Recipe.create(title: "Bubble Tea", description: "boba, black tea, sugar", cuisine_id: ch.id, meal_id: drinks.id)
Recipe.create(title: "Congee", description: "rice, water, century egg, gluten, chicken", cuisine_id: ch.id, meal_id: brekkie.id)
Recipe.create(title: "Soup Dumplings", description: "filling, dumpling skin", cuisine_id: ch.id, meal_id: apps.id)
Recipe.create(title: "Peking Duck", description: "duck", cuisine_id: ch.id, meal_id: dinner.id)
Recipe.create(title: "Sushi", description: "tuna, sushi rice", cuisine_id: jp.id, meal_id: lunch.id)
Recipe.create(title: "Ramen", description: "shoyu broth, noodles, tonkatsu, egg", cuisine_id: jp.id, meal_id: dinner.id)
Recipe.create(title: "Sake", description: "fermented rice", cuisine_id: jp.id, meal_id: drinks.id)
Recipe.create(title: "Butter Chicken", description: "butter, chicken, rice", cuisine_id: ia.id, meal_id: dinner.id)
Recipe.create(title: "Naan", description: "dough", cuisine_id: ia.id, meal_id: apps.id)
Recipe.create(title: "Daal", description: "lentil", cuisine_id: ia.id, meal_id: apps.id)
Recipe.create(title: "Samosa", description: "spiced potatoes, onions, peas, meat, lentils", cuisine_id: ia.id, meal_id: apps.id)
Recipe.create(title: "Scrambled Eggs", description: "eggs, butter", cuisine_id: us.id, meal_id: brekkie.id)
Recipe.create(title: "Brownies", description: "cocoa powder, water, egg", cuisine_id: us.id, meal_id: dessert.id)
Recipe.create(title: "Beer", description: "malted malted barley, though wheat, maize, or rice", cuisine_id: us.id, meal_id: drinks.id)
Recipe.create(title: "Moscow Mule", description: "vodka, ginger beer", cuisine_id: us.id, meal_id: drinks.id)
Recipe.create(title: "Chicken Noodle Soup", description: "chicken, broth, soup", cuisine_id: us.id, meal_id: apps.id)
Recipe.create(title: "Salmon steak", description: "salmon", cuisine_id: us.id, meal_id: dinner.id)
Recipe.create(title: "Spaghetti & Meatballs", description: "thin spaghetti pasta, tomato sauce, meatballs", cuisine_id: it.id, meal_id: dinner.id)
Recipe.create(title: "Mushroom Risotto", description: "sliced mushrooms, shallots, white wine, arborio rice", cuisine_id: it.id, meal_id: dinner.id)
Recipe.create(title: "Gelato", description: "milk, sugar, fruit puree", cuisine_id: it.id, meal_id: dessert.id)
Recipe.create(title: "Chocolate Croissant", description: "chocolate, butter, pastry dough", cuisine_id: fr.id, meal_id: brekkie.id)
Recipe.create(title: "Macaron", description: "almond meal, sugar, egg white, butter, cream", cuisine_id: fr.id, meal_id: dessert.id)
Recipe.create(title: "Duck Confit", description: "duck legs, duck fat, garlic, bay leaf, pepper", cuisine_id: fr.id, meal_id: dinner.id)
Recipe.create(title: "Crepe", description: "egg, flour, sugar, butter", cuisine_id: fr.id, meal_id: brekkie.id)

puts  "seed complete"
