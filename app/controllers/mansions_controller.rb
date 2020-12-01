class MansionsController < ApplicationController
  def new
    @mansion = Mansion.new
  end

  def create
    @mansion = Mansion.new(mansion_params)
    if @mansion.save!
      redirect_to mansion_path(@mansion)
    else
      render :new
    end
  end

  def mansion_params
    params.require(:mansion).permit(:address, :price, :capacity, :title, :description, :photo)
  end
end
