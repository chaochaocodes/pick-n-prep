class Recipe < ApplicationRecord
    belongs_to :meal
    belongs_to :cuisine

    has_many :ingredients 
    has_many :directions
    accepts_nested_attributes_for :ingredients
    accepts_nested_attributes_for :directions

    has_one_attached :image
    validates :title, :description, :image, presence: :true
end
