class Admin::OrdersController < ApplicationController
  before_filter :verify_logged_in
  def edit
  @order = Order.find(params[:id])

  end


  def update
    @order = Order.new(order_params)

    if @order.update(order_params)
      flash[:notice] = 'Tour update'
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
    @x = Order.group(:tour_id).count

  	if params[:search]
    	@order = Order.search(params[:search]).all.order('created_at DESC').paginate(:page => params[:page], :per_page => 5)

    else
      @orders = Order.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 5)
      
    end
  end

  def show
    @order = Order.find(params[:id])  	
  end

  private
  def order_params
    params.require(:order).permit(:tour_id, :number,:telephonenum, :email, :status,:note, :User_name)
  end
end
