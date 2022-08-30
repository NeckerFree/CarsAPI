class AppointmentsController < ApplicationController
  # before_action :authenticate_request
  before_action :set_appointment, only: %i[show update destroy]

  def index
    @appointments = Appointment.where(user_id: params[:user_id])
    render json: @appointments
  end

  def show
    @appointment = set_appointment
    render json: @appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      render json: @appointment, status: :created
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def update
    @appointment = set_appointment
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment = set_appointment
    @appointment.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def appointment_params
    params.fetch(:appointment, {}).permit(:date_for, :duration, :branch, :car_id, :seller_id, :city_id, :user_id)
  end
end
