class BasesController < ApplicationController
  def create
    @base = Base.new(base_params)
    if @base.save
      redirect_to @base
    else
      render :new
    end
  end

  def destroy
    @base = Base.find(params[:id])
    @base.destroy

    redirect_to bases_path
  end

  def edit
    @base = Base.find(params[:id])
  end

  def index
    render text: Base.all.to_json
  end

  def new
    @base = Base.new
  end

  def show
    base = Base.find(params[:id])
    render text: base.to_json
  end

  def update
    @base = Base.find(params[:id])

    if @base.update(base_params)
      redirect_to @base
    else
      render :edit
    end
  end

private
  def base_params
    params.require(:base).permit(:name)
  end
end
