class MansionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR description ILIKE :query OR address ILIKE :query"
      @mansions = Mansion.where(sql_query, query: "%#{params[:query]}%")
    else
      @mansions = Mansion.all
    end

    @markers = @mansions.geocoded.map do |mansion|
      {
        lat: mansion.latitude,
        lng: mansion.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { mansion: mansion }),
        image_url: helpers.asset_url('logo-3.png')
      }
    end
  end

  def show
    @mansion = Mansion.find(params[:id])
    @reviews = @mansion.reviews
    @booking = Booking.new

    @markers = [{ lat: @mansion.latitude, lng: @mansion.longitude, infoWindow: render_to_string(partial: "info_window", locals: { mansion: @mansion }), image_url: helpers.asset_url('logo-3.png') }]

    @availabilities = @mansion.bookings.map do |booking|
      {
        from: booking.start_date.strftime('%Y-%m-%e'),
        to: booking.end_date.strftime('%Y-%m-%e')
      }
    end
  end

  def new
    @mansion = Mansion.new
  end

  def create
    @mansion = Mansion.new(mansion_params)
    @mansion.user = current_user
    if @mansion.save!
      redirect_to mansion_path(@mansion)
    else
      render :new
    end
  end

  def edit
    @mansion = Mansion.find(params[:id])
  end

  def update
    @mansion = Mansion.find(params[:id])
    @mansion.update(mansion_params)
    redirect_to mansion_path(@mansion)
  end

  def destroy
    @mansion = Mansion.find(params[:id])
    @mansion.destroy
    redirect_to mansions_path
  end

  private

  def mansion_params
    params.require(:mansion).permit(:address, :price, :capacity, :title, :description, photos: [])
  end
end
