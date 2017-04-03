class Admin::OptionsController < Admin::ApplicationController
  def index
  	@order_unready = Order.where(status: 0).last(10)
  	@order_ready = Order.where(status: 1).last(10)
  	@blog_count = Blog.count
  	@order_unready_count = Order.where(status: 0).count
  	@order_this_month_count = Order.where("created_at >= ? AND created_at <= ?", Time.now.beginning_of_month, Time.now.end_of_month).count
  	@blogs = Blog.last(10).reverse

  	@blogcategories = Blogcategory.select("id, name")
  	@tour_name = Tour.select("id, title")
  end
end
