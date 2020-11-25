require 'test_helper'

class MerchandisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @merchandise = merchandises(:one)
  end

  test "should get index" do
    get merchandises_url
    assert_response :success
  end

  test "should get new" do
    get new_merchandise_url
    assert_response :success
  end

  test "should create merchandise" do
    assert_difference('Merchandise.count') do
      post merchandises_url, params: { merchandise: { name: @merchandise.name, price: @merchandise.price } }
    end

    assert_redirected_to merchandise_url(Merchandise.last)
  end

  test "should show merchandise" do
    get merchandise_url(@merchandise)
    assert_response :success
  end

  test "should get edit" do
    get edit_merchandise_url(@merchandise)
    assert_response :success
  end

  test "should update merchandise" do
    patch merchandise_url(@merchandise), params: { merchandise: { name: @merchandise.name, price: @merchandise.price } }
    assert_redirected_to merchandise_url(@merchandise)
  end

  test "should destroy merchandise" do
    assert_difference('Merchandise.count', -1) do
      delete merchandise_url(@merchandise)
    end

    assert_redirected_to merchandises_url
  end
end
