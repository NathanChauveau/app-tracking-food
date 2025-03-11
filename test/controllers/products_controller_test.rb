require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one) # Charge un utilisateur depuis les fixtures
    sign_in_as(@user)   # Connexion de l'utilisateur
    @product = products(:one) # Charge un produit de la fixture
  end

  test "should get index" do
    get products_path
    assert_response :success
  end

  test "should get show" do
    get product_path(@product)
    assert_response :success
  end

  test "should get new" do
    get new_product_path
    assert_response :success
  end

  test "should create product" do
    assert_difference("Product.count", 1) do
      post products_path, params: { product: { name: "New Product", kcals: 10, category_id: 1 } }
    end
    assert_redirected_to product_path(Product.last)
  end
  test "should delete product" do
    assert_difference("Product.count", -1) do
      delete product_path(@product)
    end
    assert_redirected_to products_path
  end
end
