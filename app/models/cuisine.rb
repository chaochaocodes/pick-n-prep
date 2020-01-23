class Cuisine < ApplicationRecord
    has_many :dishes
    has_many :meals, through: :dishes
end
