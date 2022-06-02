require "application_system_test_case"

class RestaurantDailyMenusTest < ApplicationSystemTestCase
  setup do
    @restaurant_daily_menu = restaurant_daily_menus(:one)
  end

  test "visiting the index" do
    visit restaurant_daily_menus_url
    assert_selector "h1", text: "Restaurant Daily Menus"
  end

  test "creating a Restaurant daily menu" do
    visit restaurant_daily_menus_url
    click_on "New Restaurant Daily Menu"

    fill_in "Account", with: @restaurant_daily_menu.account_id
    fill_in "Day", with: @restaurant_daily_menu.day
    fill_in "Food", with: @restaurant_daily_menu.food_id
    fill_in "Restaurant", with: @restaurant_daily_menu.restaurant_id
    fill_in "Status", with: @restaurant_daily_menu.status
    fill_in "Uid", with: @restaurant_daily_menu.uid
    click_on "Create Restaurant daily menu"

    assert_text "Restaurant daily menu was successfully created"
    click_on "Back"
  end

  test "updating a Restaurant daily menu" do
    visit restaurant_daily_menus_url
    click_on "Edit", match: :first

    fill_in "Account", with: @restaurant_daily_menu.account_id
    fill_in "Day", with: @restaurant_daily_menu.day
    fill_in "Food", with: @restaurant_daily_menu.food_id
    fill_in "Restaurant", with: @restaurant_daily_menu.restaurant_id
    fill_in "Status", with: @restaurant_daily_menu.status
    fill_in "Uid", with: @restaurant_daily_menu.uid
    click_on "Update Restaurant daily menu"

    assert_text "Restaurant daily menu was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurant daily menu" do
    visit restaurant_daily_menus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurant daily menu was successfully destroyed"
  end
end
