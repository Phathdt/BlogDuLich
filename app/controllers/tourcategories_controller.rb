class TourcategoriesController < ApplicationController
  def show
  	@category = Tourcategory.find(params[:id])
  	@categories = Tourcategory.all
  	@tours = Tour.all
  end
end
