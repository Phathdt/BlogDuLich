class Admin::BlogsController < Admin::ApplicationController
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)

    if params[:blog][:image].blank?
      @blog.image = nil
    end

    if @blog.save
      flash[:notice] = 'Blog Created'
      redirect_to admin_blogs_path
    else
      render 'new'
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])

    if params[:blog][:image].blank?
      @blog.image = nil
    end

    if @blog.update(blog_params)
      flash[:notice] = 'Blog Updated'

      redirect_to admin_blogs_path
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    flash[:notice] = 'Blog Removed'

      redirect_to admin_blogs_path
  end

  def index
   if params[:search]
    @blogs = Blog.search(params[:search]).all.order('created_at DESC').paginate(:page => params[:page], :per_page => 2)
    else
      @blogs = Blog.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 2)      
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :blogcategory_id, :user_id,:image, :body)
  end
end
