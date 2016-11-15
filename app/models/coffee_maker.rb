class CoffeeMaker < ApplicationRecord
	validates :product_type, presence: true
	validates :sku, presence: true
end
