class MaestrosController < ApplicationController

  def index
    @maestros = Maestro.all
  end

  def show
    @maestro = Maestro.find(params[:id])
  end

  def new
    @maestro = Maestro.new
  end

  def created
    @maestro = Maestro.create(mae_params)
    redirect_to action: :index
  end

  def edit
    @maestro = Maestro.find(params[:id])
  end

  def update
    @maestro = Maestro.find(params[:id])
    @maestro.update_attributes(mae_params)
    redirect_to action: :index
  end

  def destroy
    @maestro = Maestro.find(params[:id])
    @maestro.destroy
    redirect_to action: :index
  end


  private

  def mae_params
    params.require(:maestro).permit(:artist, :album, :genre, :favorite)
  end


end
