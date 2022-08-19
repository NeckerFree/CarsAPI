class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show update destroy ]

  # GET /appointments
  def index
    @appointments = Appointment.where(user_id: current_user.id)

    render json: @appointments
  end

  def show
    @appointment=set_appointment
    render json: @appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user_id=current_user.id
    if @appointment.save
      render json: @appointment, status: :created, location: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def update
    @appointment=set_appointment
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment=set_appointment
    @appointment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.fetch(:appointment, {:date_for, :duration, :brand, :car_id,:seller_id, :city_id})
     end
end
