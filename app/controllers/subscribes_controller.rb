class SubscribesController < ApplicationController
  def new
  	@sub = Subscribe.new
  end

  def create
  	@sub = Subscribe.new(sub_params)

  	if @sub.save
  		flash[:notice] = 'Subscribe Created'
  		redirect_to thankyou_path
  	else
  		render 'new'
  	end
  end

  def destroy
  end
  
  private
  def sub_params
  	params.require(:subscribe).permit(:name, :email, :phone)  	
  end
end
