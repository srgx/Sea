require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "should not save product without name, description and price" do
    product = Product.new
    assert_not product.save, "Saved the product without a title"
  end

  test "should save valid product" do
    product = Product.new(name:"Test Name", description:"Test Description", price: 20)
    assert product.save
  end

end
