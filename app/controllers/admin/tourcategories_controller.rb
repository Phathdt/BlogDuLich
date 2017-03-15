class Admin::TourcategoriesController < Admin::ApplicationController
  def new
    @category = Tourcategory.new
  end

  def create
    @category = Tourcategory.new(tourcategory_params)
    if @category.save
      flash[:notice] = 'Tour category Created'
      redirect_to admin_tourcategories_path
    else
      render 'new'
    end
  end

  def edit
    @category = Tourcategory.find(params[:id])
  end

  def update
    @category = Tourcategory.find(params[:id])

    if @category.update(tourcategory_params)
      flash[:notice] = 'Tour Category Updated'

      redirect_to admin_tourcategories_path
    else
      render 'new'
    end
  end

  def destroy
    @category = Tourcategory.find(params[:id])
    @category.destroy

    flash[:notice] = 'Tour Category Removed'

      redirect_to admin_tourcategories_path
  end

  def index
    if params[:search]
    @categories = Tourcategory.search(params[:search]).all.order('created_at DESC')

    else
      @categories = Tourcategory.all.order('created_at DESC')
      
    end
  end

  private
  def tourcategory_params
    params.require(:tourcategory).permit(:name)
  end
end
