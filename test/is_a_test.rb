require 'test_helper'

class IsATest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, IsA
  end
end
