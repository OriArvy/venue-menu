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

  def edit
    @review = VenueReview.find(params[:id])
    authorize @review
  end

  def update
    @review = VenueReview.find(params[:id])
    @user = current_user
    authorize @review
    if @review.update(review_params)
      redirect_to profile_path
    else
      render :new
    end
  end

  def destroy
    @review = VenueReview.find(params[:id])
    @user = current_user
    authorize @review
    @review.delete
    redirect_to profile_path
  end

  private

  def review_params
    params.require(:venue_review).permit(:rating, :description)
  end
end
