class CoffeeMaker < ApplicationRecord
	has_many :maker_pods
	has_many :coffee_pods, through: :maker_pods
end
