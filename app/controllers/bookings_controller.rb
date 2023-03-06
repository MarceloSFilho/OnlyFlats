class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit ]
  before_action :set_flat, only: %i[ new create ]
  before_action :authenticate_user!, only: %i[ all edit create new ]

  def all
    @bookings = Booking.all_by_user(current_user)
    authorize @bookings
  end
  def new
    @booking = Booking.new
    authorize @booking
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.flat = @flat
    @booking.total_price = @flat.price
    authorize @booking
    if @booking.save
        redirect_to  confirmation_path, notice: "Booking was successfully created."
    else
        render :new, status: :unprocessable_entity
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
  def booking_params
    params.require(:booking).permit(:total_price, :booking_date)
  end

end
