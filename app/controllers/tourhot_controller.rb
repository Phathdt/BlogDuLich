class TourhotController < ApplicationController
  def index
  	@tours = Tour.all
  end
end
