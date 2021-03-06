class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = Booking.all
  end

  def show
    @user = current_user
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @user = current_user
    @venue = Venue.find(params[:venue_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = @user
    @venue = Venue.find(params[:venue_id])
    @booking.venue = @venue
    authorize @booking
    if @booking.save
      redirect_to profile_path
    else
      authorize @venue
      redirect_to venue_path(@venue)
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to booking_path(booking)
    else
      render :new
    end
  end

  def destroy
    @booking.delete
    authorize @booking
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :duration, :price, :payment_status)
  end
end
