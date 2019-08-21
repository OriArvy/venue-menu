class VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
    authorize @venue
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
    if @venue.save
      authorize @venue
      redirect_to venues_path
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
    if @venue.update(venue_params)
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.delete
    authorize @venue
    redirect_to venues_path
  end

  private

  def venue_params
    params.require(:venue).permit(:photo, :name, :price, :rating, :address, :description)
  end
end
