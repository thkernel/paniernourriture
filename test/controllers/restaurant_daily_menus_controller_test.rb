require "test_helper"

class RestaurantDailyMenusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_daily_menu = restaurant_daily_menus(:one)
  end

  test "should get index" do
    get restaurant_daily_menus_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_daily_menu_url
    assert_response :success
  end

  test "should create restaurant_daily_menu" do
    assert_difference('RestaurantDailyMenu.count') do
      post restaurant_daily_menus_url, params: { restaurant_daily_menu: { account_id: @restaurant_daily_menu.account_id, day: @restaurant_daily_menu.day, food_id: @restaurant_daily_menu.food_id, restaurant_id: @restaurant_daily_menu.restaurant_id, status: @restaurant_daily_menu.status, uid: @restaurant_daily_menu.uid } }
    end

    assert_redirected_to restaurant_daily_menu_url(RestaurantDailyMenu.last)
  end

  test "should show restaurant_daily_menu" do
    get restaurant_daily_menu_url(@restaurant_daily_menu)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_daily_menu_url(@restaurant_daily_menu)
    assert_response :success
  end

  test "should update restaurant_daily_menu" do
    patch restaurant_daily_menu_url(@restaurant_daily_menu), params: { restaurant_daily_menu: { account_id: @restaurant_daily_menu.account_id, day: @restaurant_daily_menu.day, food_id: @restaurant_daily_menu.food_id, restaurant_id: @restaurant_daily_menu.restaurant_id, status: @restaurant_daily_menu.status, uid: @restaurant_daily_menu.uid } }
    assert_redirected_to restaurant_daily_menu_url(@restaurant_daily_menu)
  end

  test "should destroy restaurant_daily_menu" do
    assert_difference('RestaurantDailyMenu.count', -1) do
      delete restaurant_daily_menu_url(@restaurant_daily_menu)
    end

    assert_redirected_to restaurant_daily_menus_url
  end
end
