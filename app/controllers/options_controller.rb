class OptionsController < ApplicationController
  def index
  	@tour_new = Tour.last(6)
  	@tour_hot = Tour.last(6)
  	@tour_hinh = Tour.last(6)
  	@blog_new = Blog.last(6)
  end

  def thankyou
  end

  def support
  end

  def about
  end
end
