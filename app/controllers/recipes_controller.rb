class RecipesController < ApplicationController
  def index
    @recipes = Recipe.order(created_at: :desc)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
