class MaestrosController < ApplicationController

  before_action :find_maestro, only: [:show, :edit, :update, :destroy]

  def index
    @maestros = Maestro.order(:artist)
  end

  def show
  end

  def new
    @maestro = Maestro.new
  end

  def create
    @maestro = Maestro.new(mae_params)
    if maestro.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @maestro.update_attributes(mae_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @maestro.destroy
    redirect_to action: :index
  end


  private

  def find_maestro
    @maestro = Maestro.find(params[:id])
  end

  def mae_params
    params.require(:maestro).permit(:artist, :album, :genre, :favorite)
  end


end
