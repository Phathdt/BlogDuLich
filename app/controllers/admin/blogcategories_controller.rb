class Admin::BlogcategoriesController < Admin::ApplicationController
  before_filter :verify_logged_in
  def new
    @category = Blogcategory.new
  end

  def create
    @category = Blogcategory.new(blogcategory_params)
    if @category.save
      flash[:notice] = 'Blog category Created'
      redirect_to admin_blogcategories_path
    else
      render 'new'
    end
  end

  def edit
    @category = Blogcategory.find(params[:id])
  end

  def update
    @category = Blogcategory.find(params[:id])

    if @category.update(blogcategory_params)
      flash[:notice] = 'Blog Category Updated'

      redirect_to admin_blogcategories_path
    else
      render 'new'
    end
  end

  def destroy
    @category = Blogcategory.find(params[:id])
    @category.destroy

    flash[:notice] = 'Blog Category Removed'

      redirect_to admin_blogcategories_path
  end

  def index
    if params[:search]
    @categories = Blogcategory.search(params[:search]).all.order('created_at DESC')

    else
      @categories = Blogcategory.all.order('created_at DESC')
      
    end
  end

  private
  def blogcategory_params
    params.require(:blogcategory).permit(:name)
  end
end
