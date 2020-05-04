class CuisinesController < ApplicationController
    skip_before_action :require_login

    def index
        # render :layout => "format"
        @cuisines = Cuisine.all
    end

    def show
        @recipes = Recipe.where(cuisine_id: params[:id])
    end
end
