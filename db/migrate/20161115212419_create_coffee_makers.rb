class CreateCoffeeMakers < ActiveRecord::Migration[5.0]
  def change
    create_table :coffee_makers do |t|
      t.string :product_type
      t.boolean :water_line_compatible
      t.string :sku

      t.timestamps
    end
  end
end
