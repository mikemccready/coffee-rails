class CreateCoffeePods < ActiveRecord::Migration[5.0]
  def change
    create_table :coffee_pods do |t|
      t.string :product_type
      t.string :coffee_flavor
      t.integer :pack_size
      t.string :sku

      t.timestamps
    end
  end
end
