require "application_system_test_case"

class FastordersTest < ApplicationSystemTestCase
  setup do
    @fastorder = fastorders(:one)
  end

  test "visiting the index" do
    visit fastorders_url
    assert_selector "h1", text: "Fastorders"
  end

  test "creating a Fastorder" do
    visit fastorders_url
    click_on "New Fastorder"

    fill_in "Address", with: @fastorder.address
    fill_in "Date", with: @fastorder.date
    fill_in "Phone", with: @fastorder.phone
    fill_in "Product name", with: @fastorder.product_name
    fill_in "Quantity", with: @fastorder.quantity
    fill_in "Zip code", with: @fastorder.zip_code
    click_on "Create Fastorder"

    assert_text "Fastorder was successfully created"
    click_on "Back"
  end

  test "updating a Fastorder" do
    visit fastorders_url
    click_on "Edit", match: :first

    fill_in "Address", with: @fastorder.address
    fill_in "Date", with: @fastorder.date
    fill_in "Phone", with: @fastorder.phone
    fill_in "Product name", with: @fastorder.product_name
    fill_in "Quantity", with: @fastorder.quantity
    fill_in "Zip code", with: @fastorder.zip_code
    click_on "Update Fastorder"

    assert_text "Fastorder was successfully updated"
    click_on "Back"
  end

  test "destroying a Fastorder" do
    visit fastorders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fastorder was successfully destroyed"
  end
end
