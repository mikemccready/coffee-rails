require 'test_helper'

class MakerPodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maker_pod = maker_pods(:one)
  end

  test "should get index" do
    get maker_pods_url, as: :json
    assert_response :success
  end

  test "should create maker_pod" do
    assert_difference('MakerPod.count') do
      post maker_pods_url, params: { maker_pod: { coffee_maker_id: @maker_pod.coffee_maker_id, coffee_pod: @maker_pod.coffee_pod } }, as: :json
    end

    assert_response 201
  end

  test "should show maker_pod" do
    get maker_pod_url(@maker_pod), as: :json
    assert_response :success
  end

  test "should update maker_pod" do
    patch maker_pod_url(@maker_pod), params: { maker_pod: { coffee_maker_id: @maker_pod.coffee_maker_id, coffee_pod: @maker_pod.coffee_pod } }, as: :json
    assert_response 200
  end

  test "should destroy maker_pod" do
    assert_difference('MakerPod.count', -1) do
      delete maker_pod_url(@maker_pod), as: :json
    end

    assert_response 204
  end
end
