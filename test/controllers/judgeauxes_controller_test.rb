require 'test_helper'

class JudgeauxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @judgeaux = judgeauxes(:one)
  end

  test "should get index" do
    get judgeauxes_url
    assert_response :success
  end

  test "should get new" do
    get new_judgeaux_url
    assert_response :success
  end

  test "should create judgeaux" do
    assert_difference('Judgeaux.count') do
      post judgeauxes_url, params: { judgeaux: { code: @judgeaux.code, judge_description: @judgeaux.judge_description, judge_title: @judgeaux.judge_title, last_update: @judgeaux.last_update, organ: @judgeaux.organ } }
    end

    assert_redirected_to judgeaux_url(Judgeaux.last)
  end

  test "should show judgeaux" do
    get judgeaux_url(@judgeaux)
    assert_response :success
  end

  test "should get edit" do
    get edit_judgeaux_url(@judgeaux)
    assert_response :success
  end

  test "should update judgeaux" do
    patch judgeaux_url(@judgeaux), params: { judgeaux: { code: @judgeaux.code, judge_description: @judgeaux.judge_description, judge_title: @judgeaux.judge_title, last_update: @judgeaux.last_update, organ: @judgeaux.organ } }
    assert_redirected_to judgeaux_url(@judgeaux)
  end

  test "should destroy judgeaux" do
    assert_difference('Judgeaux.count', -1) do
      delete judgeaux_url(@judgeaux)
    end

    assert_redirected_to judgeauxes_url
  end
end
