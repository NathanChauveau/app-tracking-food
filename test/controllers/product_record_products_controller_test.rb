require "test_helper"

class ProductRecordProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get product_record_products_new_url
    assert_response :success
  end

  test "should get create" do
    get product_record_products_create_url
    assert_response :success
  end
end
