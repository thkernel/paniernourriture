require "application_system_test_case"

class OrderStatusesTest < ApplicationSystemTestCase
  setup do
    @order_status = order_statuses(:one)
  end

  test "visiting the index" do
    visit order_statuses_url
    assert_selector "h1", text: "Order Statuses"
  end

  test "creating a Order status" do
    visit order_statuses_url
    click_on "New Order Status"

    fill_in "Account", with: @order_status.account_id
    fill_in "Description", with: @order_status.description
    fill_in "Name", with: @order_status.name
    fill_in "Status", with: @order_status.status
    fill_in "Uid", with: @order_status.uid
    click_on "Create Order status"

    assert_text "Order status was successfully created"
    click_on "Back"
  end

  test "updating a Order status" do
    visit order_statuses_url
    click_on "Edit", match: :first

    fill_in "Account", with: @order_status.account_id
    fill_in "Description", with: @order_status.description
    fill_in "Name", with: @order_status.name
    fill_in "Status", with: @order_status.status
    fill_in "Uid", with: @order_status.uid
    click_on "Update Order status"

    assert_text "Order status was successfully updated"
    click_on "Back"
  end

  test "destroying a Order status" do
    visit order_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order status was successfully destroyed"
  end
end
