class CoffeeMakersController < ApplicationController
	def show
		@coffee_maker = CoffeeMaker.find(params[:id])
	end
	def new
	end

	def create
		@coffee_maker = CoffeeMaker.new(coffee_maker_params)

		@coffee_maker.save
		redirect_to @coffee_maker
	end

	private
		def coffee_maker_params
			params.require(:coffee_maker).permit(:product_type, :water_line_compatible, :sku)
		end
end
