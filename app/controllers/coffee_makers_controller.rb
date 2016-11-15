class CoffeeMakersController < ApplicationController
	def index
		@coffee_maker = CoffeeMaker.all
	end
	def show
		@coffee_maker = CoffeeMaker.find(params[:id])
	end

	def new
		@coffee_maker = CoffeeMaker.new
	end

	def edit
		@coffee_maker = CoffeeMaker.find(params[:id])
	end

	def create
		@coffee_maker = CoffeeMaker.new(coffee_maker_params)

		if @coffee_maker.save
			redirect_to @coffee_maker
		else
			render 'new'
		end
	end

	def update
		@coffee_maker = CoffeeMaker.find(params[:id])
		if @coffee_maker.update(coffee_maker_params)
			redirect_to @coffee_maker
		else
			render 'edit'
		end		
	end

	def destroy
		@coffee_maker = CoffeeMaker.find(params[:id])
		@coffee_maker.destroy

		redirect_to coffee_makers_path
	end

	private
		def coffee_maker_params
			params.require(:coffee_maker).permit(:product_type, :water_line_compatible, :sku)
		end
end
