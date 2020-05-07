class Recipe < ApplicationRecord
    belongs_to :meal
    belongs_to :cuisine

    has_many :ingredients, inverse_of: :recipe 
    has_many :directions, inverse_of: :recipe 
    accepts_nested_attributes_for :ingredients, 
        reject_if: proc { |attributes| attributes['name'].blank? },
		allow_destroy: true
    accepts_nested_attributes_for :directions,
        reject_if: proc { |attributes| attributes['name'].blank? },
        allow_destroy: true

    has_one_attached :image
    validates :title, :description, presence: :true
end
