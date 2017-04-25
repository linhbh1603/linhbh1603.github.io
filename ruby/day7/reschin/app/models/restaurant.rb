class Restaurant < ActiveRecord::Base
	has_many :category_restaurants
  	has_many :categories, through: :category_restaurants

end
