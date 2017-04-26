class Admin::MailsController < Admin::ApplicationController
  def new
    @mail = Mail.new
  end

  def create
    @mail = Mail.new(mail_params)

    if @mail.save
      @subs = Subscribe.all
      # send mail
      
      flash[:notice] = 'Mail Sended'
      redirect_to admin_mails_path
    else
      render 'new'   
    end
  end

  def edit
    @mail = Mail.find(params[:id])
  end

  def update
    @mail = Mail.find(params[:id])

    if @mail.update(mail_params)
      flash[:notice] = 'Mail Updated'
      redirect_to admin_mails_path
    else
      render 'new'   
    end
  end

  def destroy
    @mail = Mail.find(params[:id])
    @mail.destroy

    flash[:notice] = 'Mail Destroyed'
    redirect_to admin_mails_path
  end

  def index
    @mails = Mail.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 10)
      
  end

  private
  def mail_params
    params.require(:mail).permit(:subject, :detail)
  end
end
