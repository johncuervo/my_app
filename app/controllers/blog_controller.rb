class BlogController < ApplicationController
  def index
    @blogs = Blog.all

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end

  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blog_index_path, notice: "Blog guardado exitosamente"
      # flash[:notice] = "Blog guardado exitosamente"
    else
      flash[:alert] = "Post no guardado"
      render :new
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blog_index_path
    else
      render :edit
    end
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy

    redirect_to blog_index_path
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :content)
    end

end
