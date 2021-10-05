require "application_system_test_case"

class FoodRestaurantsTest < ApplicationSystemTestCase
  setup do
    @food_restaurant = food_restaurants(:one)
  end

  test "visiting the index" do
    visit food_restaurants_url
    assert_selector "h1", text: "Food Restaurants"
  end

  test "creating a Food restaurant" do
    visit food_restaurants_url
    click_on "New Food Restaurant"

    fill_in "Food", with: @food_restaurant.food_id
    fill_in "Restaurant", with: @food_restaurant.restaurant_id
    fill_in "Status", with: @food_restaurant.status
    fill_in "Uid", with: @food_restaurant.uid
    click_on "Create Food restaurant"

    assert_text "Food restaurant was successfully created"
    click_on "Back"
  end

  test "updating a Food restaurant" do
    visit food_restaurants_url
    click_on "Edit", match: :first

    fill_in "Food", with: @food_restaurant.food_id
    fill_in "Restaurant", with: @food_restaurant.restaurant_id
    fill_in "Status", with: @food_restaurant.status
    fill_in "Uid", with: @food_restaurant.uid
    click_on "Update Food restaurant"

    assert_text "Food restaurant was successfully updated"
    click_on "Back"
  end

  test "destroying a Food restaurant" do
    visit food_restaurants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Food restaurant was successfully destroyed"
  end
end
