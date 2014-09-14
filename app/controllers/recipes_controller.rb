class RecipesController < ApplicationController
  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to articles_path
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def index
    render text: Recipe.all.to_json
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.find(params[:id])
    if params[:barcore_id]
      @barcore = Barcore.find(params[:barcore_id])
    else
      render text: @recipe.to_json
    end
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render :edit
    end
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name)
    end
end
