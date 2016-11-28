class MakerPodsController < ApplicationController
  before_action :set_maker_pod, only: [:show, :update, :destroy]

  # GET /maker_pods
  def index
    @maker_pods = MakerPod.all

    render json: @maker_pods
  end

  # GET /maker_pods/1
  def show
    render json: @maker_pod
  end

  # POST /maker_pods
  def create
    @maker_pod = MakerPod.new(maker_pod_params)

    if @maker_pod.save
      render json: @maker_pod, status: :created, location: @maker_pod
    else
      render json: @maker_pod.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /maker_pods/1
  def update
    if @maker_pod.update(maker_pod_params)
      render json: @maker_pod
    else
      render json: @maker_pod.errors, status: :unprocessable_entity
    end
  end

  # DELETE /maker_pods/1
  def destroy
    @maker_pod.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maker_pod
      @maker_pod = MakerPod.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def maker_pod_params
      params.require(:maker_pod).permit(:coffee_maker_id, :coffee_pod)
    end
end
