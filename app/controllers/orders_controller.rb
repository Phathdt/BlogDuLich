class OrdersController < ApplicationController
  def add
  	@order = Order.new
  	@tour_id = params[:order][:tour_id]
    @number = params[:order][:number]

    @order.tour_id = @tour_id.to_i

    @order.number = @number.to_i

    @tour = Tour.find(@tour_id)
  end

  def create
  	@order = Order.new(order_params)

  	if @order.save
      redirect_to thankyou_path
    else
      render 'new'
    end

  end

  def index
  	
  end

   private
  def order_params
    params.require(:order).permit(:tour_id, :number,:telephonenum, :email, :status,:note, :User_name)
  end
end
