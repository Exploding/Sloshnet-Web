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

  def show
    @barcore = Barcore.find(params[:id])
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
end
