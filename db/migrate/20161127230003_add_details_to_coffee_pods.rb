class AddDetailsToCoffeePods < ActiveRecord::Migration[5.0]
  def change
    add_column :coffee_pods, :image_url, :string
    add_column :coffee_pods, :product_title, :string
  end
end
