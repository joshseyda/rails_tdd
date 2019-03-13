require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should be invalid without a title" do
    posts(:one).title = nil
    assert_nil posts(:one).title
    assert_equal false, posts(:one).valid?
  end
end
