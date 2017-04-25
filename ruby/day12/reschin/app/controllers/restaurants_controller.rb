# == Schema Information
#
# Table name: restaurants
#
#  id          :integer          not null, primary key
#  name        :string
#  about       :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#
# Indexes
#
#  index_restaurants_on_location_id  (location_id)
#

class RestaurantsController < ApplicationController
  def index
    @banners = Banner.all.to_a.transform(3)
    @categories = Category.all
  end

  def show
    @restaurant = Restaurant.where(id: params[:id]).first
    @comments = @restaurant.comments
    @new_comment = Comment.new
 	
 	if current_user
 		@is_liked = Favorite.where(
 			user_id: current_user.id, restaurant_id: @restaurant.id
 			).exists? 		
 	end

  end
end
