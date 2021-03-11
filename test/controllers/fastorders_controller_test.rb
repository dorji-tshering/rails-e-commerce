require "test_helper"

class FastordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fastorder = fastorders(:one)
  end

  test "should get index" do
    get fastorders_url
    assert_response :success
  end

  test "should get new" do
    get new_fastorder_url
    assert_response :success
  end

  test "should create fastorder" do
    assert_difference('Fastorder.count') do
      post fastorders_url, params: { fastorder: { address: @fastorder.address, date: @fastorder.date, phone: @fastorder.phone, product_name: @fastorder.product_name, quantity: @fastorder.quantity, zip_code: @fastorder.zip_code } }
    end

    assert_redirected_to fastorder_url(Fastorder.last)
  end

  test "should show fastorder" do
    get fastorder_url(@fastorder)
    assert_response :success
  end

  test "should get edit" do
    get edit_fastorder_url(@fastorder)
    assert_response :success
  end

  test "should update fastorder" do
    patch fastorder_url(@fastorder), params: { fastorder: { address: @fastorder.address, date: @fastorder.date, phone: @fastorder.phone, product_name: @fastorder.product_name, quantity: @fastorder.quantity, zip_code: @fastorder.zip_code } }
    assert_redirected_to fastorder_url(@fastorder)
  end

  test "should destroy fastorder" do
    assert_difference('Fastorder.count', -1) do
      delete fastorder_url(@fastorder)
    end

    assert_redirected_to fastorders_url
  end
end
