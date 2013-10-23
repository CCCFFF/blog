class VeggiesController < ApplicationController

  def index
    @veggies = Veggie.all
  end

  def new

  end

  def create
    v = Veggie.new
    v.source = params[:source]
    v.caption = params[:caption]
    v.save

    redirect_to "http://localhost:3000/veggies"
  end

  def show
    @veggie = Veggie.find(params[:id])
  end

  def edit
    @veggie = Veggie.find(params[:id])
  end

  def update
    @veggie = Veggie.find(params[:id])
    @veggie.source = params[:source]
    @veggie.caption = params[:caption]
    @veggie.save

    redirect_to "http://localhost:3000/veggies/#{@veggie.id}"
  end

  def destroy
    @veggie = Veggie.find(params[:id])
    @veggie.destroy

    redirect_to "http://localhost:3000/veggies"
  end

end
