require 'test_helper'

class OneDayPassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @one_day_pass = one_day_passes(:one)
  end

  test "should get index" do
    get one_day_passes_url
    assert_response :success
  end

  test "should get new" do
    get new_one_day_pass_url
    assert_response :success
  end

  test "should create one_day_pass" do
    assert_difference('OneDayPass.count') do
      post one_day_passes_url, params: { one_day_pass: { date: @one_day_pass.date, member_id: @one_day_pass.member_id } }
    end

    assert_redirected_to one_day_pass_url(OneDayPass.last)
  end

  test "should show one_day_pass" do
    get one_day_pass_url(@one_day_pass)
    assert_response :success
  end

  test "should get edit" do
    get edit_one_day_pass_url(@one_day_pass)
    assert_response :success
  end

  test "should update one_day_pass" do
    patch one_day_pass_url(@one_day_pass), params: { one_day_pass: { date: @one_day_pass.date, member_id: @one_day_pass.member_id } }
    assert_redirected_to one_day_pass_url(@one_day_pass)
  end

  test "should destroy one_day_pass" do
    assert_difference('OneDayPass.count', -1) do
      delete one_day_pass_url(@one_day_pass)
    end

    assert_redirected_to one_day_passes_url
  end
end
