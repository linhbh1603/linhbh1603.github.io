class RestaurantsController < ApplicationController
  def index
  	@banners = Banner.all.to_a
  end
end