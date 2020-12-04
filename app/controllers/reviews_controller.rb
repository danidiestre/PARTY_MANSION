class ReviewsController < ApplicationController

    def new
        @review = Review.new
        @booking = Booking.find(params[:booking_id])
    end
    
    def create
        @booking = Booking.find(params[:booking_id])
        @review = Review.new(review_params)
        @review.booking = @booking
        if @review.save
          redirect_to mansion_path(@booking.mansion)
        else
          render :new
          
        end
    end

    private

    def review_params
        params.require(:review).permit(:rating, :content)
    end

end

