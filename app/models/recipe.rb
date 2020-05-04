class Recipe < ApplicationRecord
    belongs_to :meal
    belongs_to :cuisine

    has_many :ingredients 
    has_many :directions
    accepts_nested_attributes_for :ingredients, 
        reject_if: proc { |attributes| attributes['name'].blank? },
		allow_destroy: true
    accepts_nested_attributes_for :directions,
        reject_if: proc { |attributes| attributes['name'].blank? },
        allow_destroy: true

    has_one_attached :image
    validates :title, :description, presence: :true
end
