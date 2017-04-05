class TourhotController < ApplicationController
  def index
  	@tours = Tour.all.last(6).reverse
  end
end
