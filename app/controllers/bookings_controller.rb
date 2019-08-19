class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
    redirect_to bookings_path
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(booking)
  end

  def destoy
    @booking.delete
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:restaurant).permit(:check_in, :check_out, :duration, :price, :payment_status)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
