class CuisinesController < ApplicationController
    def index
        @cuisines = Cuisine.all
    end

    def show
        @dishes = Dish.where(cuisine_id: params[:id])
    end
end
