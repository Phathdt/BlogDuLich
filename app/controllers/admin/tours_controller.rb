class Admin::ToursController < Admin::ApplicationController
  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)

    if params[:tour][:image].blank?
      @tour.image = nil
    end

    if @tour.save
      flash[:notice] = 'Tour Created'
      redirect_to admin_tours_path
    else
      render 'new'
    end
  end

  def edit
    @tour = Tour.find(params[:id])
  end

  def update
    @tour = Tour.find(params[:id])

    if params[:tour][:image].blank?
      @tour.image = nil
    end

    if @tour.update(tour_params)
      flash[:notice] = 'Tour update'
      redirect_to admin_tours_path
    else
      render 'new'
    end
  end

  def destroy
    @tour = Tour.find(params[:id])
    @tour.destroy

    flash[:notice] = 'Tour Removed'

      redirect_to admin_tours_path
  end

  def index
    if params[:search]
    @tours = Tour.search(params[:search]).all.order('created_at DESC').paginate(:page => params[:page], :per_page => 2)

    else
      @tours = Tour.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 2)
      
    end
  end

  private
  def tour_params
    params.require(:tour).permit(:title, :tourcategory_id, :user_id,:time,:datepart,:price,:image, :body, )
  end
end
