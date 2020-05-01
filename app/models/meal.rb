class Meal < ApplicationRecord
    has_many :users_meals
    has_many :users, through: :users_meals

    has_many :recipes
    has_many :cuisines, through: :recipes
end
