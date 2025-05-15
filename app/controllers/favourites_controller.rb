class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.includes(:car).all
  end

  def create
    car = Car.find(params[:car_id])
    unless Favourite.exist?(car: car)
      Favourite.create!(car: car)
      redirect_to car_path(car)
    else
      redirect_to car_path(car), alert: "Car is already in favourites!"
    end
  end

  def destroy
    favourite = Favourite.find(params[:id])
    favourite.destroy
    redirect_to favourites_path, notice: "Removed from favourites!"
  end
end
