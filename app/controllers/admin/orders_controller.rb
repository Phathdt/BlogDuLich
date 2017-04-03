class Admin::OrdersController < Admin::ApplicationController

  before_filter :verify_logged_in

  def edit
    @order = Order.find(params[:id])

  end


  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      flash[:notice] = 'Order update'
      redirect_to admin_orders_path
    else
      render 'new'
    end
  end

  def destroy
  	@order = Order.find(params[:id])
  	@order.destroy
  	flash[:notice] = 'Order Removed'

    redirect_to admin_orders_path

  end

  def index
    @tour_name = Tour.select("id, title")
  	if params[:search]
    	@order = Order.search(params[:search]).all.order('created_at DESC').paginate(:page => params[:page], :per_page => 10)

    else
      @orders = Order.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 10)
      
    end
  end

  private
  def order_params
    params.require(:order).permit(:tour_id, :number,:telephonenum, :email, :status,:note, :User_name)
  end
end
