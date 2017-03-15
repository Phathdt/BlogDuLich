class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all
  	@categories = Blogcategory.all
  end

  def show
    @blog = Blog.find(params[:id])
    @categories = Blogcategory.all
  	@blogs = Blog.all
  end
end
