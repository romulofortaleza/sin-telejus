require 'test_helper'

class ComponentCourtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @component_court = component_courts(:one)
  end

  test "should get index" do
    get component_courts_url
    assert_response :success
  end

  test "should get new" do
    get new_component_court_url
    assert_response :success
  end

  test "should create component_court" do
    assert_difference('ComponentCourt.count') do
      post component_courts_url, params: { component_court: { code: @component_court.code, composition: @component_court.composition, last_update: @component_court.last_update, organ: @component_court.organ, public_defender: @component_court.public_defender } }
    end

    assert_redirected_to component_court_url(ComponentCourt.last)
  end

  test "should show component_court" do
    get component_court_url(@component_court)
    assert_response :success
  end

  test "should get edit" do
    get edit_component_court_url(@component_court)
    assert_response :success
  end

  test "should update component_court" do
    patch component_court_url(@component_court), params: { component_court: { code: @component_court.code, composition: @component_court.composition, last_update: @component_court.last_update, organ: @component_court.organ, public_defender: @component_court.public_defender } }
    assert_redirected_to component_court_url(@component_court)
  end

  test "should destroy component_court" do
    assert_difference('ComponentCourt.count', -1) do
      delete component_court_url(@component_court)
    end

    assert_redirected_to component_courts_url
  end
end
