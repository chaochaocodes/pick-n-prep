class MealsController < ApplicationController
    skip_before_action :require_login

    def index
        # render :layout => "format"
        @meals = Meal.all
    end

    def show
        @recipes = Recipe.where(meal_id: params[:id])
    end
end