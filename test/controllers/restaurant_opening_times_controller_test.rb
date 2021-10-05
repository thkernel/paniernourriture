require "test_helper"

class RestaurantOpeningTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_opening_time = restaurant_opening_times(:one)
  end

  test "should get index" do
    get restaurant_opening_times_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_opening_time_url
    assert_response :success
  end

  test "should create restaurant_opening_time" do
    assert_difference('RestaurantOpeningTime.count') do
      post restaurant_opening_times_url, params: { restaurant_opening_time: { day: @restaurant_opening_time.day, end_time: @restaurant_opening_time.end_time, restaurant_id: @restaurant_opening_time.restaurant_id, start_time: @restaurant_opening_time.start_time, uid: @restaurant_opening_time.uid } }
    end

    assert_redirected_to restaurant_opening_time_url(RestaurantOpeningTime.last)
  end

  test "should show restaurant_opening_time" do
    get restaurant_opening_time_url(@restaurant_opening_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_opening_time_url(@restaurant_opening_time)
    assert_response :success
  end

  test "should update restaurant_opening_time" do
    patch restaurant_opening_time_url(@restaurant_opening_time), params: { restaurant_opening_time: { day: @restaurant_opening_time.day, end_time: @restaurant_opening_time.end_time, restaurant_id: @restaurant_opening_time.restaurant_id, start_time: @restaurant_opening_time.start_time, uid: @restaurant_opening_time.uid } }
    assert_redirected_to restaurant_opening_time_url(@restaurant_opening_time)
  end

  test "should destroy restaurant_opening_time" do
    assert_difference('RestaurantOpeningTime.count', -1) do
      delete restaurant_opening_time_url(@restaurant_opening_time)
    end

    assert_redirected_to restaurant_opening_times_url
  end
end
