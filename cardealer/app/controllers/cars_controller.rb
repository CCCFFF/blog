class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def new

  end

  def create
    c = Car.new
    c.source = params[:source]
    c.caption = params[:caption]
    c.save

    redirect_to "http://localhost:3000/cars"

  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.source = params[:source]
    @car.caption = params[:caption]
    @car.save

    redirect_to "http://localhost:3000/cars/#{@car.id}"
  end

  def delete
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to "http://localhost:3000/cars"
  end

end
