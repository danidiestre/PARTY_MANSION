class MansionsController < ApplicationController
   skip_before_action :authenticate_user!, only: [ :index, :show]

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
    @booking = Booking.new
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

  private

  def mansion_params
    params.require(:mansion).permit(:address, :price, :capacity, :title, :description, photos: [])
  end
end
