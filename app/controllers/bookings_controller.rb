class BookingsController < ApplicationController
  def create
    @booking = Booking.new(extract_dates)
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

  def extract_dates
    dates = params[:booking][:date].split(" to ")
    { start_date: dates[0], end_date: dates[1] }
  end

  def accepted
    @booking = Booking.new
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def rejected
    @booking = Booking.new
    @booking.status = "rejected"
    @booking.save
    redirect_to dashboard_path
  end
end
