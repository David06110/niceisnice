require 'test_helper'

class CouponsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get coupons_show_url
    assert_response :success
  end

end
