require 'test_helper'

class DutiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duty = duties(:one)
  end

  test "should get index" do
    get duties_url
    assert_response :success
  end

  test "should get new" do
    get new_duty_url
    assert_response :success
  end

  test "should create duty" do
    assert_difference('Duty.count') do
      post duties_url, params: { duty: { file: @duty.file, title: @duty.title } }
    end

    assert_redirected_to duty_url(Duty.last)
  end

  test "should show duty" do
    get duty_url(@duty)
    assert_response :success
  end

  test "should get edit" do
    get edit_duty_url(@duty)
    assert_response :success
  end

  test "should update duty" do
    patch duty_url(@duty), params: { duty: { file: @duty.file, title: @duty.title } }
    assert_redirected_to duty_url(@duty)
  end

  test "should destroy duty" do
    assert_difference('Duty.count', -1) do
      delete duty_url(@duty)
    end

    assert_redirected_to duties_url
  end
end
