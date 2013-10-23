class FoodsController < ApplicationController
  def index
    @foods = Food.all

  end

  def new

  end

  def create
    f = Food.new
    f.source = params[:source]
    f.caption = params[:caption]
    f.save

    redirect_to foods_url
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    @food.source = params[:source]
    @food.caption = params[:caption]
    @food.save

    redirect_to foods_url
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy

    redirect_to foods_url
  end

end
