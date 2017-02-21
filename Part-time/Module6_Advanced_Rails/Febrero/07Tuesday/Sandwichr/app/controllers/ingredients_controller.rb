class IngredientsController < ApplicationController
  before_action :find_ingredient

  def index
    ingredients = Ingredient.all
    render json: ingredients
  end

  def create
    ingredient = Ingredient.create(ingredient_params)
    render json: ingredient
  end

  def show
    unless @ingredient
      ingredient_not_found
      return
    end

    render json: @ingredient
  end

  def update
    unless @ingredient
      ingredient_not_found
      return
    end

    @ingredient.update(ingredient_params)
    render json: @ingredient
  end

  def destroy
    unless @ingredient
      ingredient_not_found
      return
    end

    @ingredient.destroy
    render json: @ingredient
  end

  private

  def ingredient_params
    params.permit(:name, :calories)
  end

  def find_ingredient
    @ingredient = Ingredient.find_by(id: params[:id])
  end

  def ingredient_not_found
    render json: {error: "ingredient not found"}, status: 404
  end
end
