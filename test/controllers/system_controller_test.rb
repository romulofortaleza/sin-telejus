require 'test_helper'

class SystemControllerTest < ActionDispatch::IntegrationTest
  test "should get bpmex" do
    get system_bpmex_url
    assert_response :success
  end

end
