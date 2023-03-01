class GaragesController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @garages = policy_scope(Garage)

  end

  def show
    @garage = Garage.find(params[:id])
    authorize @garage
  end

  def new
    @garage = Garage.new
    authorize @garage
  end

  def create
    @garage = Garage.new(garage_params)
    @garage.user = current_user
    authorize @garage
    @garage.save
    redirect_to garage_path(@garage)
  end

  def edit
    @garage = Garage.find(params[:id])
    authorize @garage
  end

  def update
    @garage = Garage.find(params[:id])
    @garage.update(garage_params)
    authorize @garage
    @garage.save
    redirect_to garage_path(@garage)
  end

  def destroy
    @garage = Garage.find(params[:id])
    authorize @garage
    @garage.destroy
    redirect_to garages_path, status: :see_other
  end

  private

  def garage_params
    params.require(:garage).permit(:titre, :price, :address)
  end

end
