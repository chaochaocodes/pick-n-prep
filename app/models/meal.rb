class Meal < ApplicationRecord
    has_many :users_meals
    has_many :users, through: :users_meals

    has_many :dishes
    has_many :cuisines, through: :dishes
end
