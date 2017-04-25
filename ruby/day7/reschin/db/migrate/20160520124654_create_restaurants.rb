class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :position
      t.float :lat
      t.float :lng
      t.string :about

      t.timestamps null: false
    end
  end
end
