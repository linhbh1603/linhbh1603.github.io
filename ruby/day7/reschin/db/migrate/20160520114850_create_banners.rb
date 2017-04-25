class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :url
      t.integer :type
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
