class Dish < ApplicationRecord
    belongs_to :meal
    belongs_to :cuisine
    has_one_attached :image

    validates :name, presence: :true
end
