require 'test_helper'

class UpperComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upper_component = upper_components(:one)
  end

  test "should get index" do
    get upper_components_url
    assert_response :success
  end

  test "should get new" do
    get new_upper_component_url
    assert_response :success
  end

  test "should create upper_component" do
    assert_difference('UpperComponent.count') do
      post upper_components_url, params: { upper_component: { address: @upper_component.address, composition: @upper_component.composition, last_update: @upper_component.last_update, organ: @upper_component.organ } }
    end

    assert_redirected_to upper_component_url(UpperComponent.last)
  end

  test "should show upper_component" do
    get upper_component_url(@upper_component)
    assert_response :success
  end

  test "should get edit" do
    get edit_upper_component_url(@upper_component)
    assert_response :success
  end

  test "should update upper_component" do
    patch upper_component_url(@upper_component), params: { upper_component: { address: @upper_component.address, composition: @upper_component.composition, last_update: @upper_component.last_update, organ: @upper_component.organ } }
    assert_redirected_to upper_component_url(@upper_component)
  end

  test "should destroy upper_component" do
    assert_difference('UpperComponent.count', -1) do
      delete upper_component_url(@upper_component)
    end

    assert_redirected_to upper_components_url
  end
end
