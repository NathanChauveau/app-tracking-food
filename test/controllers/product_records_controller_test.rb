require "test_helper"

class ProductRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one) # Charge un utilisateur depuis les fixtures
    sign_in_as(@user)   # Connexion de l'utilisateur
    @product_record = product_records(:one) # Charge un enregistrement de la fixture
  end

  test "should get index" do
    get product_records_path
    assert_response :success
  end

  test "should create product record" do
    assert_difference("ProductRecord.count", 1) do
      post product_records_path, params: { product_record: { name: "New Record", product_id: products(:one).id, weight: 1, date: "2025-02-12" } }
    end
    assert_redirected_to product_record_path(ProductRecord.last)
  end
end
