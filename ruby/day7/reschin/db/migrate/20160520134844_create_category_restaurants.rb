class CreateCategoryRestaurants < ActiveRecord::Migration
  def change
    create_table :category_restaurants do |t|
      t.references :category, index: true, foreign_key: true
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
