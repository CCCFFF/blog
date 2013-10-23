class CarsController < ApplicationController

  def index
    @cars = Car.all

  end

  def show

    @carid = Car.find(params[:id])

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

  def delete
    c = Car.find(params[:id])
    c.destroy

    redirect_to "http://localhost:3000/cars"
  end

  def edit
    c = Car.find(params[:id])

  end

  def alter
    c = Car.find(params[:id])
    c.source = params[:source]
    c.caption = params[:caption]
    c.save

    redirect_to "http://localhost:3000/cars"

  end

end
