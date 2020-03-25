require 'test_helper'

class DeliveryItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery_item = delivery_items(:one)
  end

  test "should get index" do
    get delivery_items_url, as: :json
    assert_response :success
  end

  test "should create delivery_item" do
    assert_difference('DeliveryItem.count') do
      post delivery_items_url, params: { delivery_item: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show delivery_item" do
    get delivery_item_url(@delivery_item), as: :json
    assert_response :success
  end

  test "should update delivery_item" do
    patch delivery_item_url(@delivery_item), params: { delivery_item: {  } }, as: :json
    assert_response 200
  end

  test "should destroy delivery_item" do
    assert_difference('DeliveryItem.count', -1) do
      delete delivery_item_url(@delivery_item), as: :json
    end

    assert_response 204
  end
end
