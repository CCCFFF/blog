class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find_by_id(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new
    @doctor.name = params[:name]
    @doctor.location = params[:location]
    @doctor.category = params[:category]
    
    if @doctor.save
      redirect_to doctors_url
    else
      render 'new'
    end
  end

  def edit
    @doctor = Doctor.find_by_id(params[:id])
  end

  def update
    @doctor = Doctor.find_by_id(params[:id])
    @doctor.name = params[:name]
    @doctor.location = params[:location]
    @doctor.category = params[:category]
    
    if @doctor.save
      redirect_to doctors_url
    else
      render 'new'
    end
  end

  def destroy
    @doctor = Doctor.find_by_id(params[:id])
    @doctor.destroy
    redirect_to doctors_url
  end
end
