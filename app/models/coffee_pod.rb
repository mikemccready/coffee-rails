class CoffeePod < ApplicationRecord
	has_many :maker_pods
	has_many :coffee_makers, through: :maker_pods
end
