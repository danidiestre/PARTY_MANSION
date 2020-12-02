class PagesController < ApplicationController
  def home
     @mansions = Mansion.all.sample(3)
  end
end
