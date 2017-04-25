class AddRestaurantIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :restaurant, foreign_key: true
  end
end
