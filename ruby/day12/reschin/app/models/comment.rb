# == Schema Information
#
# Table name: comments
#
#  id            :integer          not null, primary key
#  content       :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  restaurant_id :integer
#  user_id       :integer
#
# Indexes
#
#  index_comments_on_restaurant_id  (restaurant_id)
#  index_comments_on_user_id        (user_id)
#

class Comment < ApplicationRecord
	belongs_to :restaurant
	belongs_to :user
end
