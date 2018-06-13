class CarsController < ApplicationController
  def index
    @cars = Car.all
    p "*" * 100
    p "index"
    p params
    p "*" * 100
  end

  def new
    @car = Car.new
    p "*" * 100
    p "new"
    p params
    p "*" * 100
  end

  def create
    p "*" * 100
    p "create"
    p params
    p "*" * 100
    Car.create(car_params)
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :year, :color)
  end
end
