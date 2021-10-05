require "test_helper"

class FoodRestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_restaurant = food_restaurants(:one)
  end

  test "should get index" do
    get food_restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_food_restaurant_url
    assert_response :success
  end

  test "should create food_restaurant" do
    assert_difference('FoodRestaurant.count') do
      post food_restaurants_url, params: { food_restaurant: { food_id: @food_restaurant.food_id, restaurant_id: @food_restaurant.restaurant_id, status: @food_restaurant.status, uid: @food_restaurant.uid } }
    end

    assert_redirected_to food_restaurant_url(FoodRestaurant.last)
  end

  test "should show food_restaurant" do
    get food_restaurant_url(@food_restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_restaurant_url(@food_restaurant)
    assert_response :success
  end

  test "should update food_restaurant" do
    patch food_restaurant_url(@food_restaurant), params: { food_restaurant: { food_id: @food_restaurant.food_id, restaurant_id: @food_restaurant.restaurant_id, status: @food_restaurant.status, uid: @food_restaurant.uid } }
    assert_redirected_to food_restaurant_url(@food_restaurant)
  end

  test "should destroy food_restaurant" do
    assert_difference('FoodRestaurant.count', -1) do
      delete food_restaurant_url(@food_restaurant)
    end

    assert_redirected_to food_restaurants_url
  end
end
