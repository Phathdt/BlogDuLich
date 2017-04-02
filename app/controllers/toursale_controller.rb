class ToursaleController < ApplicationController
  def index
  	@tours = Tour.all
  	
  end
end
