class ReviewsController < ApplicationController

    def new
        @review = Review.new
        @mansion = Mansion.find(params[:mansion_id])
    end
    
    def create
        @mansion = Mansion.find(params[:id])
        @booking = Booking.find(params[:booking_id])
        @review = Review.new(review_params)
        @review.mansion = @booking
        if @review.save
          redirect_to mansion_path(@mansion)
        else
          render :new
          
        end
    end

    private

    def review_params
        params.require(:review).permit(:rating, :content)
    end

end

