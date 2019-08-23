class VenuesController < ApplicationController

  def index
    if params[:query].present?
      @venues = policy_scope(Venue)
      @venues = Venue.geocoded
      @venues = Venue.near(params[:query], 25)
      if @venues.blank?
        @venues
      end
    else
      @venues = policy_scope(Venue)
    end
    @markers = @venues.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { venue: venue }),
        image_url: helpers.asset_url(venue.photo)
      }
    end

  end

  def show
    @venue = Venue.find(params[:id])
    @booking = Booking.new
    @user = current_user
    authorize @booking
    authorize @venue

    @markers = [{
        lat: @venue.latitude,
        lng: @venue.longitude,
        infoWindow: nil,
        image_url: helpers.asset_url(@venue.photo)
      }]

  end

  def new
    @venue = Venue.new
    @user = current_user
    authorize @venue
  end

  def create
    @venue = Venue.new(venue_params)
    @user = current_user
    @venue.user = @user
    authorize @venue
    if @venue.save
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  def edit
    @venue = Venue.find(params[:id])
    authorize @venue
  end

  def update
    @venue = Venue.find(params[:id])
    authorize @venue
    if @venue.update(venue_params)
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    authorize @venue
    @venue.delete
    redirect_to root_path
  end

  private

  def venue_params
    params.require(:venue).permit(:photo, :name, :price, :rating, :address, :description)
  end
end
