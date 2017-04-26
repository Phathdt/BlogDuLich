class Admin::SubscribesController < Admin::ApplicationController
	before_filter :verify_logged_in
  def edit
  	@sub = Subscribe.find(params[:id])
  end

  def update
  	@sub = Subscribe.find(params[:id])

  	if @sub.update(sub_params)
  		flash[:notice] = 'Update Subscribe'
  		redirect_to admin_subscribes_path
  	else
  		render 'new'
  	end

  end

  def destroy
  	@sub = Subscribe.find(params[:id])
  	@sub.destroy
  	flash[:notice] = 'Destroy Subscribe'
  	redirect_to admin_subscribes_path

  end

  def index
  	@subs = Subscribe.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 10)
  end

  def about
    @subs = Subscribe.all
  end 
  private
  def sub_params
  	params.require(:subscribe).permit(:name, :email, :phone)  	
  end
end
