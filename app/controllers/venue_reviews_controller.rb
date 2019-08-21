class VenueReviewsController < ApplicationControllerbookingdef new
  def new
    @user = current_user
    @review = Review.new
    @booking = Booking.find(params[:venue_id])
  end

  def create
    @review = Review.new(review_params)
    @user = current_user
    @booking = Booking.find(params[:venue_id])
    @review.user = @user
    if @review.save
      redirect_to venue_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @user = current_user
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
