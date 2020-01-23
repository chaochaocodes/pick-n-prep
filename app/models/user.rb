class User < ApplicationRecord
    has_secure_password
    
    has_many :users_meals
    has_many :meals, through: :users_meals

    validates :name, presence: true
end