class PumpsController < ApplicationController
  def create
    @pump = Pump.new(pump_params)
    if @pump.save
      redirect_to @pump
    else
      render :new
    end
  end

  def destroy
    @pump = Pump.find(params[:id])
    @pump.destroy

    redirect_to articles_path
  end

  def edit
    @pump = Pump.find(params[:id])
  end

  def index
    render text: Pump.all.to_json
  end

  def new
    @pump = Pump.new
  end

  def show
    pump = Pump.find(params[:id])
    render text: pump.to_json
  end

  def update
    @pump = Pump.find(params[:id])

    if @pump.update(pump_params)
      redirect_to @pump
    else
      render :edit
    end
  end

  private
    def pump_params
      params.require(:pump).permit(:barcore_id, :base_id, :pump_num)
    end
end
