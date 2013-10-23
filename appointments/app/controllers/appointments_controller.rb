class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find_by_id(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new
    @appointment.time = params[:time]
    @appointment.category = params[:category]
    @appointment.patient_id = params[:patient_id]
    @appointment.doctor_id = params[:doctor_id]

    if @appointment.save
      redirect_to appointments_url
    else
      render 'new'
    end
  end

  def edit
    @appointment = Appointment.find_by_id(params[:id])
  end

  def update
    @appointment = Appointment.find_by_id(params[:id])
    @appointment.time = params[:time]
    @appointment.category = params[:category]
    @appointment.category = params[:category]
    @appointment.patient_id = params[:patient_id]
    @appointment.doctor_id = params[:doctor_id]

    if @appointment.save
      redirect_to appointments_url
    else
      render 'new'
    end
  end

  def destroy
    @appointment = Appointment.find_by_id(params[:id])
    @appointment.destroy
    redirect_to appointments_url
  end
end
