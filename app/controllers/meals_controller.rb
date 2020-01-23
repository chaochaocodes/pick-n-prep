class MealsController < ApplicationController
    def index
        @meals = Meal.all
    end

    def show
        @dishes = Dish.where(meal_id: params[:id])
    end
end