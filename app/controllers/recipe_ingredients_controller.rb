class RecipeIngredientsController < ApplicationController
  before_action :find_recipe

  def create
    puts @recipe.id
    @ingredient = Ingredient.where(name: recipe_ingredient_params[:name].downcase).first_or_create
    @recipe.recipe_ingredients.create(ingredient: @ingredient)

    redirect_to @recipe
  end

  def update
  end

  def destroy
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
    authorize @recipe
  end

  def recipe_ingredient_params
    params.require(:recipe_ingredients).permit(:name)
  end

end
