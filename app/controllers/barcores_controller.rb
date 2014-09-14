class BarcoresController < ApplicationController
  def create
    @barcore = Barcore.new(barcore_params)
    if @barcore.save
      redirect_to @barcore
    else
      render :new
    end
  end

  def destroy
    @barcore = Barcore.find(params[:id])
    @barcore.destroy

    redirect_to articles_path
  end

  def edit
    @barcore = Barcore.find(params[:id])
  end

  def index
    @barcores = Barcore.all
  end

  def new
    @barcore = Barcore.new
  end

  def serve
    barcore = Barcore.find(params[:id])
    recipe = Recipe.find(params[:recipe_id])
    barcore.queued_recipes << recipe
    # TODO Do anything that needs to be done on when a drink is requested
    redirect_to barcore_path(barcore)
  end

  def show
    @barcore = Barcore.find(params[:id])
    @recipes = recipes_for_barcore(@barcore)
  end

  def update
    @barcore = Barcore.find(params[:id])

    if @barcore.update(barcore_params)
      redirect_to @barcore
    else
      render :edit
    end
  end

  private
    def barcore_params
      params.require(:barcore).permit(:name)
    end

    def recipes_for_barcore(barcore)
      barcore_recipe_ids = []
      Recipe.all.each do |recipe|
        can_make_recipe = true
        for base in recipe.bases
          if not barcore.bases.include? base
            can_make_recipe = false
            break
          end
        end
        if can_make_recipe
          barcore_recipe_ids.push(recipe)
        end
      end
      Recipe.where(id: barcore_recipe_ids)
    end
end
