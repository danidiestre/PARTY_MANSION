class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @mansions = Mansion.all.sample(3)
  end

  def dashboard
    @user_mansions = current_user.mansions
    @user_bookings = current_user.bookings
    @user_booking_requests = current_user.requested_bookings
  end
end
