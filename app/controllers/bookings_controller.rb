class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @mansion = Mansion.find(params['mansion_id'])
    @booking.mansion = @mansion
    @booking.user = current_user
    if @booking.save
      redirect_to mansion_path(@mansion)
      flash[:notice] = "Booking was succesful"
    else
      render "mansions/show"
      flash[:alert] = "Booking was unsuccesful"
    end
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
