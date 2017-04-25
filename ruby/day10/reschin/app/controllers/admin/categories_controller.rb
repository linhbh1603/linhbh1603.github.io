class Admin::CategoriesController < AdminController

  layout 'admin'

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)

    if @category.save
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  def destroy
    @categories = Category.find(params[:id])
    @categories.destroy
    redirect_to admin_categories_path
  end

  private

  def category_params
    params.require(:category).permit(:image, :name, :article_id, :description)
  end
end