class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :update, :destroy]

  # GET /reservations
  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  # POST /v1/reservations
  def create
    @reservation = Reservation.new
    @reservation.create_reservations(reservation_params)
    render json: @reservation, status: :created
  end

  # PUT /v1/reservations/:id
  def update
    @reservation.create_reservations(reservation_params)
    render json: @reservation, status: :ok
  end

  private

  def reservation_params
    params.permit(:reservation_time, :guest_count, :table_name, :reservation_shift, :guest_email)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
