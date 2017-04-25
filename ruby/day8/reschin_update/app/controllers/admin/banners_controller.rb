class Admin::BannersController < AdminController
	def index
		@banners = Banner.all
	end
	
	def new
	end

	def create
	end
end