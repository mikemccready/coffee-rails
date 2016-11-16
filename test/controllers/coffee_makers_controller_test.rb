require 'test_helper'

class CoffeeMakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffee_maker = coffee_makers(:one)
  end

  test "should get index" do
    get coffee_makers_url, as: :json
    assert_response :success
  end

  test "should create coffee_maker" do
    assert_difference('CoffeeMaker.count') do
      post coffee_makers_url, params: { coffee_maker: { product_type: @coffee_maker.product_type, sku: @coffee_maker.sku, water_line_compatible: @coffee_maker.water_line_compatible } }, as: :json
    end

    assert_response 201
  end

  test "should show coffee_maker" do
    get coffee_maker_url(@coffee_maker), as: :json
    assert_response :success
  end

  test "should update coffee_maker" do
    patch coffee_maker_url(@coffee_maker), params: { coffee_maker: { product_type: @coffee_maker.product_type, sku: @coffee_maker.sku, water_line_compatible: @coffee_maker.water_line_compatible } }, as: :json
    assert_response 200
  end

  test "should destroy coffee_maker" do
    assert_difference('CoffeeMaker.count', -1) do
      delete coffee_maker_url(@coffee_maker), as: :json
    end

    assert_response 204
  end
end
