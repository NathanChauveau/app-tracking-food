require "test_helper"

class ProductRecordProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one) # Charge un utilisateur depuis les fixtures
    sign_in_as(@user)   # Connexion de l'utilisateur
    @product_record = product_records(:one)
    @product = products(:one)
  end

  test "should get new" do
    get new_product_record_product_record_product_path(@product_record)
    assert_response :success
  end

  test "should create product record product" do
    assert_difference("ProductRecordProduct.count", 1) do
      post product_record_product_record_products_path(@product_record), params: { product_record_product: { product_id: @product.id } }
    end
    assert_redirected_to product_record_path(@product_record)
  end
end
