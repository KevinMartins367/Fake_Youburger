require 'test_helper'

class Api::V1::FoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_foods_show_url
    assert_response :success
  end

end
