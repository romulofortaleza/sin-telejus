require 'test_helper'

class LightControllerTest < ActionDispatch::IntegrationTest
  test "should get county" do
    get light_county_url
    assert_response :success
  end

end
