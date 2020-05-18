class RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :update, :destroy]

    def index
        @recipes = Recipe.all
        # @recipes = Recipe.all.order("created_at DESC")
    end

    def show
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

    # redirect_to recipe_path(@recipe) # /users/#{@user.id}
    def create
        @recipe = Recipe.new(recipe_params) # change from .create 
        if @recipe.save
            redirect_to @recipe, notice: "Recipe successfully created!"
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
        @recipe.destroy
        redirect_to recipes_path, notice: "Recipe Deleted."
    end

    private
    def find_recipe
        @recipe = Recipe.find_by(id: params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:title, :description, :cuisine_id, :meal_id, :image, 
            ingredients_attributes: [:id, :name, :quantity, :_destroy],
            directions_attributes: [:id, :step, :_destroy]
        )
    end
end
