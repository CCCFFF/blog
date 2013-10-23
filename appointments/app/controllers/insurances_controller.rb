class InsurancesController < ApplicationController

  def index
    @insurances = Insurance.all
  end

  def show
    @insurance = Insurance.find_by_id(params[:id])
  end

  def new
    @insurance = Insurance.new
  end

  def create
    @insurance = Insurance.new
    @insurance.name = params[:name]
    @insurance.category = params[:category]
    @insurance.copay = params[:copay]
    
    if @insurance.save
      redirect_to insurances_url
    else
      render 'new'
    end
  end

  def edit
    @insurance = Insurance.find_by_id(params[:id])
  end

  def update
    @insurance = Insurance.find_by_id(params[:id])
    @insurance.name = params[:name]
    @insurance.category = params[:category]
    @insurance.copay = params[:copay]
    
    if @insurance.save
      redirect_to insurances_url
    else
      render 'new'
    end
  end

  def destroy
    @insurance = Insurance.find_by_id(params[:id])
    @insurance.destroy
    redirect_to insurances_url
  end
end
