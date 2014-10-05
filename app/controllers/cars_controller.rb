class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
  end

  def create
    @car = Car.new(car_params)
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    if @car.save
      redirect_to manufacturer_cars_path, notice: "Your record has been created successfully!"
    else
      render "new"
    end
  end

  def car_params
    params.require(:car).permit(:manufacturer_id, :color, :year, :mileage, :description)
  end
end
