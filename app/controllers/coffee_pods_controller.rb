class CoffeePodsController < ApplicationController
  before_action :set_coffee_pod, only: [:show, :update, :destroy]

  # GET /coffee_pods
  def index
    @coffee_pods = CoffeePod.all

    render json: @coffee_pods
  end

  # GET /coffee_pods/1
  def show
    render json: @coffee_pod, :include => :coffee_makers
  end

  # POST /coffee_pods
  def create
    @coffee_pod = CoffeePod.new(coffee_pod_params)

    if @coffee_pod.save
      render json: @coffee_pod, status: :created, location: @coffee_pod
    else
      render json: @coffee_pod.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coffee_pods/1
  def update
    if @coffee_pod.update(coffee_pod_params)
      render json: @coffee_pod
    else
      render json: @coffee_pod.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coffee_pods/1
  def destroy
    @coffee_pod.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffee_pod
      @coffee_pod = CoffeePod.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def coffee_pod_params
      params.require(:coffee_pod).permit(:product_type, :coffee_flavor, :pack_size, :sku)
    end
end
