require 'test_helper'

class CoffeePodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffee_pod = coffee_pods(:one)
  end

  test "should get index" do
    get coffee_pods_url, as: :json
    assert_response :success
  end

  test "should create coffee_pod" do
    assert_difference('CoffeePod.count') do
      post coffee_pods_url, params: { coffee_pod: { coffee_flavor: @coffee_pod.coffee_flavor, pack_size: @coffee_pod.pack_size, product_type: @coffee_pod.product_type, sku: @coffee_pod.sku } }, as: :json
    end

    assert_response 201
  end

  test "should show coffee_pod" do
    get coffee_pod_url(@coffee_pod), as: :json
    assert_response :success
  end

  test "should update coffee_pod" do
    patch coffee_pod_url(@coffee_pod), params: { coffee_pod: { coffee_flavor: @coffee_pod.coffee_flavor, pack_size: @coffee_pod.pack_size, product_type: @coffee_pod.product_type, sku: @coffee_pod.sku } }, as: :json
    assert_response 200
  end

  test "should destroy coffee_pod" do
    assert_difference('CoffeePod.count', -1) do
      delete coffee_pod_url(@coffee_pod), as: :json
    end

    assert_response 204
  end
end
