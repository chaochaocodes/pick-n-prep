class CuisinesController < ApplicationController

    def index
        # render :layout => "format"
        @cuisines = Cuisine.all
    end

    def show
        @recipes = Recipe.where(cuisine_id: params[:id])
    end
end
