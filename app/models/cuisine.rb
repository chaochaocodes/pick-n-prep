class Cuisine < ApplicationRecord
    has_many :recipes
    has_many :meals, through: :recipes
end
