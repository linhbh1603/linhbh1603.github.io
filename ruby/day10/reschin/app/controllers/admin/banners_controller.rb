class Admin::BannersController < AddminController
  
  layout 'admin'

  def index
    @banners = Banner.all
  end

  def new
    @banner = Banner.new
  end

  def create
    @banner = Banner.create(banner_params)

    if @banner.save
      redirect_to admin_banners_path
    else
      render :new
    end
  end

  def show
    @banner = Banner.find(params[:id])
  end

  def edit
    @banner = Banner.find(params[:id])
  end

  def update
    @banner = Banner.find(params[:id])
    if @banner.update(banner_params)
      redirect_to admin_banners_path
    else
      render :edit
    end
  end

  def destroy
    @banner = Banner.find(params[:id])
    @banner.destroy
    redirect_to admin_banners_path
  end

  private

  def banner_params
    params.require(:banner).permit(:image, :name, :article_id, :description)
  end
end