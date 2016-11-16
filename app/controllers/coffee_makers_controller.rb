class CoffeeMakersController < ApplicationController
  before_action :set_coffee_maker, only: [:show, :update, :destroy]

  # GET /coffee_makers
  def index
    @coffee_makers = CoffeeMaker.all

    render json: @coffee_makers
  end

  # GET /coffee_makers/1
  def show
    render json: @coffee_maker
  end

  # POST /coffee_makers
  def create
    @coffee_maker = CoffeeMaker.new(coffee_maker_params)

    if @coffee_maker.save
      render json: @coffee_maker, status: :created, location: @coffee_maker
    else
      render json: @coffee_maker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coffee_makers/1
  def update
    if @coffee_maker.update(coffee_maker_params)
      render json: @coffee_maker
    else
      render json: @coffee_maker.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coffee_makers/1
  def destroy
    @coffee_maker.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffee_maker
      @coffee_maker = CoffeeMaker.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def coffee_maker_params
      params.require(:coffee_maker).permit(:product_type, :water_line_compatible, :sku)
    end
end
