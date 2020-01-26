class DishesController < ApplicationController
    before_action :find_dish, only: [:show, :edit, :update, :destroy]

    def index
        @dishes = Dish.all
    end

    def new
        @dish = Dish.new
    end

    def create
        @dish = Dish.create(dish_params)
        if @dish.save
            redirect_to dishes_path
        else
            render :new
        end
    end

    def update
        if @dish.update(dish_params)
            redirect_to @dish
        else 
            render :edit
        end
    end

    def destroy
        @dish.delete
        redirect_to dishes_path
    end

    private
    def find_dish
        @dish = Dish.find_by(id: params[:id])
    end

    def dish_params
        params.require(:dish).permit(:name, :ingredient, :cuisine_id, :meal_id)
    end
end
