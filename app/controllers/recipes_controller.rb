class RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :update, :destroy]
    skip_before_action :require_login

    def index
        @recipes = Recipe.all
    end

    def show
        render :layout => "format"
    end

    def new
        @recipe = Recipe.new
        @recipe.ingredients.build
        @recipe.ingredients.build
        @recipe.ingredients.build
        @recipe.directions.build
        @recipe.directions.build
        @recipe.directions.build
    end

    def create
        @recipe = Recipe.create(recipe_params)
        if @recipe.save
            redirect_to @recipe, notice: "Recipe created!"
        else
            render :new
        end
    end

    def edit
        @recipe = Recipe.find_by(id: params[:id])
        @recipe.ingredients.build
        @recipe.directions.build
    end

    def update
        if @recipe.update(recipe_params)
            redirect_to @recipe
        else 
            render :edit
        end
    end

    def destroy
        @recipe.delete
        redirect_to recipes_path, notice: "Recipe Deleted."
    end

    private
    def find_recipe
        @recipe = Recipe.find_by(id: params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:title, :description, :cuisine_id, :meal_id, :image, 
            ingredients_attributes: [:id,:name, :quantity, :_destroy],
            directions_attributes: [:id, :step, :_destroy]
        )
    end
end
