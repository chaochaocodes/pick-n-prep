class Dish < ApplicationRecord
    belongs_to :meal
    belongs_to :cuisine

    validates :name, presence: :true
end
