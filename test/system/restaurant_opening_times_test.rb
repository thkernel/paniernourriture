require "application_system_test_case"

class RestaurantOpeningTimesTest < ApplicationSystemTestCase
  setup do
    @restaurant_opening_time = restaurant_opening_times(:one)
  end

  test "visiting the index" do
    visit restaurant_opening_times_url
    assert_selector "h1", text: "Restaurant Opening Times"
  end

  test "creating a Restaurant opening time" do
    visit restaurant_opening_times_url
    click_on "New Restaurant Opening Time"

    fill_in "Day", with: @restaurant_opening_time.day
    fill_in "End time", with: @restaurant_opening_time.end_time
    fill_in "Restaurant", with: @restaurant_opening_time.restaurant_id
    fill_in "Start time", with: @restaurant_opening_time.start_time
    fill_in "Uid", with: @restaurant_opening_time.uid
    click_on "Create Restaurant opening time"

    assert_text "Restaurant opening time was successfully created"
    click_on "Back"
  end

  test "updating a Restaurant opening time" do
    visit restaurant_opening_times_url
    click_on "Edit", match: :first

    fill_in "Day", with: @restaurant_opening_time.day
    fill_in "End time", with: @restaurant_opening_time.end_time
    fill_in "Restaurant", with: @restaurant_opening_time.restaurant_id
    fill_in "Start time", with: @restaurant_opening_time.start_time
    fill_in "Uid", with: @restaurant_opening_time.uid
    click_on "Update Restaurant opening time"

    assert_text "Restaurant opening time was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurant opening time" do
    visit restaurant_opening_times_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurant opening time was successfully destroyed"
  end
end
