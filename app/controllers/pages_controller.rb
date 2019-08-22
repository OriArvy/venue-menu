class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    if params[:query].present?
      @venues = Venue.search_by_name_and_address(params[:query])
    else
      @venues = Venue.all
    end
  end

  def profile
  end
end
