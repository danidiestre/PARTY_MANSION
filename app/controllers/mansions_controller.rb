class MansionsController < ApplicationController
  def index
    @mansions = Mansion.all
  end
end
