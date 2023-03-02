class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit ]
  def new
    @booking = Booking.new
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
  end
  def booking_params
    params.require(:booking).permit(:total_price, :start_date, :end_date)
  end

end
