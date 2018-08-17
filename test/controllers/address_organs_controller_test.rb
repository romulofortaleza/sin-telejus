require 'test_helper'

class AddressOrgansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @address_organ = address_organs(:one)
  end

  test "should get index" do
    get address_organs_url
    assert_response :success
  end

  test "should get new" do
    get new_address_organ_url
    assert_response :success
  end

  test "should create address_organ" do
    assert_difference('AddressOrgan.count') do
      post address_organs_url, params: { address_organ: { address: @address_organ.address, code: @address_organ.code, email: @address_organ.email, last_update: @address_organ.last_update, name: @address_organ.name, organ: @address_organ.organ, phone: @address_organ.phone, type: @address_organ.type } }
    end

    assert_redirected_to address_organ_url(AddressOrgan.last)
  end

  test "should show address_organ" do
    get address_organ_url(@address_organ)
    assert_response :success
  end

  test "should get edit" do
    get edit_address_organ_url(@address_organ)
    assert_response :success
  end

  test "should update address_organ" do
    patch address_organ_url(@address_organ), params: { address_organ: { address: @address_organ.address, code: @address_organ.code, email: @address_organ.email, last_update: @address_organ.last_update, name: @address_organ.name, organ: @address_organ.organ, phone: @address_organ.phone, type: @address_organ.type } }
    assert_redirected_to address_organ_url(@address_organ)
  end

  test "should destroy address_organ" do
    assert_difference('AddressOrgan.count', -1) do
      delete address_organ_url(@address_organ)
    end

    assert_redirected_to address_organs_url
  end
end
