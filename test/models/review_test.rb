require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test "should save review" do

    prd = products(:one)
    review = Review.new(author: "Test Author", body: "Test Body", product: prd)
    assert review.save

  end
end
