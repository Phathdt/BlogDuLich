class ToursController < ApplicationController
  def index
  	@tours = Tour.all
  	@categories = Tourcategory.all
  end

  def show
    @tour = Tour.find(params[:id])
  	@categories = Tourcategory.all
  	@tours = Tour.all
    
  end
end
