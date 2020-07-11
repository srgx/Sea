require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  
  test "should get products" do
    get products_url
    assert_response :success
  end

  test "should get one product" do
    prd = products(:one)
    get product_url(prd)
    assert_response :success
  end
end
