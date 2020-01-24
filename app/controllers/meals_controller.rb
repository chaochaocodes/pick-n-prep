class MealsController < ApplicationController
    def index
        render :layout => "format"
        @meals = Meal.all
    end

    def show
        @dishes = Dish.where(meal_id: params[:id])
    end
end