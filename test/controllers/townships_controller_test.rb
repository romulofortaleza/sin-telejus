require 'test_helper'

class TownshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @township = townships(:one)
  end

  test "should get index" do
    get townships_url
    assert_response :success
  end

  test "should get new" do
    get new_township_url
    assert_response :success
  end

  test "should create township" do
    assert_difference('Township.count') do
      post townships_url, params: { township: { address: @township.address, assistant: @township.assistant, code: @township.code, componentsj: @township.componentsj, district: @township.district, entrance: @township.entrance, forum: @township.forum, judicial_districts: @township.judicial_districts, last_update: @township.last_update, nucleus: @township.nucleus, phone: @township.phone, promoter_change: @township.promoter_change, promoter_owner: @township.promoter_owner, public_defender: @township.public_defender, relantionship: @township.relantionship, responsiblej: @township.responsiblej, supervisor: @township.supervisor, team: @township.team, titular_jugde: @township.titular_jugde } }
    end

    assert_redirected_to township_url(Township.last)
  end

  test "should show township" do
    get township_url(@township)
    assert_response :success
  end

  test "should get edit" do
    get edit_township_url(@township)
    assert_response :success
  end

  test "should update township" do
    patch township_url(@township), params: { township: { address: @township.address, assistant: @township.assistant, code: @township.code, componentsj: @township.componentsj, district: @township.district, entrance: @township.entrance, forum: @township.forum, judicial_districts: @township.judicial_districts, last_update: @township.last_update, nucleus: @township.nucleus, phone: @township.phone, promoter_change: @township.promoter_change, promoter_owner: @township.promoter_owner, public_defender: @township.public_defender, relantionship: @township.relantionship, responsiblej: @township.responsiblej, supervisor: @township.supervisor, team: @township.team, titular_jugde: @township.titular_jugde } }
    assert_redirected_to township_url(@township)
  end

  test "should destroy township" do
    assert_difference('Township.count', -1) do
      delete township_url(@township)
    end

    assert_redirected_to townships_url
  end
end
