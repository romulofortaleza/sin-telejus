require 'test_helper'

class FermojuControllerTest < ActionDispatch::IntegrationTest
  test "should get costs" do
    get fermoju_costs_url
    assert_response :success
  end

end
