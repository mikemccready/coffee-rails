class AddColumnsToCoffeeMakers < ActiveRecord::Migration[5.0]
  def change
  	add_column :coffee_makers, :image_url, :string
  	add_column :coffee_makers, :product_title, :string
  end
end
