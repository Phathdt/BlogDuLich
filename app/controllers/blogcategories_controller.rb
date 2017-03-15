class BlogcategoriesController < ApplicationController
  def show
  	@category = Blogcategory.find(params[:id])
  	@categories = Blogcategory.all
  	@blogs = Blog.all
  end
end
