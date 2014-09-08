class IngredientsController < ApplicationController
  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to @ingredient
    else
      render :new
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy

    redirect_to articles_path
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def index
    render text: Ingredient.all.to_json
  end

  def new
    @ingredient = Ingredient.new
  end

  def show
    ingredient = Ingredient.find(params[:id])
    render text: ingredient.to_json
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    if @ingredient.update(ingredient_params)
      redirect_to @ingredient
    else
      render :edit
    end
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:base_id, :recipe_id, :parts)
    end
end
