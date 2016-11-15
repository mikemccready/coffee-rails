class CoffeePodsController < ApplicationController
	def index
		@coffee_pod = CoffeePod.all
	end
end
