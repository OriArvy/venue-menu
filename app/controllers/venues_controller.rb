class VenuesController < ApplicationController
  before_action :find_venue, only: [:show, :edit, :update, :destroy]

  def index
    @venues = Venue.all
  end

  def show
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.save
    redirect_to venues_path
  end

  def edit
  end

  def update
    @venue.update(venue_params)
    redirect_to venue_path(venue)
  end

  def destoy
    @venue.delete
    redirect_to venues_path
  end

  private

  def venue_params
    params.require(:venue).permit(:photo, :name, :price, :rating, :address, :description)
  end

  def find_venue
    @venue = Venue.find(params[:id])
  end
end
