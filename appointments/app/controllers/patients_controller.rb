class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find_by_id(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new
    @patient.name = params[:name]
    @patient.gender = params[:gender]
    @patient.age = params[:age]
    @patient.health = params[:health]
    @patient.location = params[:location]
    @patient.insurance_id = params[:insurance_id]
    
    if @patient.save
      redirect_to patients_url
    else
      render 'new'
    end
  end

  def edit
    @patient = Patient.find_by_id(params[:id])
  end

  def update
    @patient = Patient.find_by_id(params[:id])
    @patient.name = params[:name]
    @patient.gender = params[:gender]
    @patient.age = params[:age]
    @patient.health = params[:health]
    @patient.location = params[:location]
    @patient.insurance_id = params[:insurance_id]
    
    if @patient.save
      redirect_to patients_url
    else
      render 'new'
    end
  end

  def destroy
    @patient = Patient.find_by_id(params[:id])
    @patient.destroy
    redirect_to patients_url
  end
end
