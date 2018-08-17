require 'test_helper'

class ActivityRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_role = activity_roles(:one)
  end

  test "should get index" do
    get activity_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_role_url
    assert_response :success
  end

  test "should create activity_role" do
    assert_difference('ActivityRole.count') do
      post activity_roles_url, params: { activity_role: { activity_id: @activity_role.activity_id, granted: @activity_role.granted, role_id: @activity_role.role_id } }
    end

    assert_redirected_to activity_role_url(ActivityRole.last)
  end

  test "should show activity_role" do
    get activity_role_url(@activity_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_role_url(@activity_role)
    assert_response :success
  end

  test "should update activity_role" do
    patch activity_role_url(@activity_role), params: { activity_role: { activity_id: @activity_role.activity_id, granted: @activity_role.granted, role_id: @activity_role.role_id } }
    assert_redirected_to activity_role_url(@activity_role)
  end

  test "should destroy activity_role" do
    assert_difference('ActivityRole.count', -1) do
      delete activity_role_url(@activity_role)
    end

    assert_redirected_to activity_roles_url
  end
end
