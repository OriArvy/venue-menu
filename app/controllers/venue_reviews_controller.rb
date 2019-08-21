class VenueReviewsController < ApplicationController
  def new
    @user = current_user
    @review = VenueReview.new
    @booking = Booking.find(params[:booking_id])
    authorize @review
  end

  def create
    @review = VenueReview.new(review_params)
    @user = current_user
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    authorize @review
    if @review.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def destroy
    @user = current_user
    @review = VenueReview.find(params[:id])
    @review.delete
    authorize @review
  end

  private

  def review_params
    params.require(:venue_review).permit(:rating, :description)
  end
end
