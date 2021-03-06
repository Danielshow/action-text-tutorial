class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blogs_params)

    if @blog.save
      redirect_to blogs_path
    else
      render 'new'
    end
  end

  private

  def blogs_params
    params.require(:blog).permit(:title, :body)
  end
end
