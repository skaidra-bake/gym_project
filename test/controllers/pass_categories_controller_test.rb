require 'test_helper'

class PassCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pass_category = pass_categories(:one)
  end

  test "should get index" do
    get pass_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_pass_category_url
    assert_response :success
  end

  test "should create pass_category" do
    assert_difference('PassCategory.count') do
      post pass_categories_url, params: { pass_category: { name: @pass_category.name, price: @pass_category.price } }
    end

    assert_redirected_to pass_category_url(PassCategory.last)
  end

  test "should show pass_category" do
    get pass_category_url(@pass_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_pass_category_url(@pass_category)
    assert_response :success
  end

  test "should update pass_category" do
    patch pass_category_url(@pass_category), params: { pass_category: { name: @pass_category.name, price: @pass_category.price } }
    assert_redirected_to pass_category_url(@pass_category)
  end

  test "should destroy pass_category" do
    assert_difference('PassCategory.count', -1) do
      delete pass_category_url(@pass_category)
    end

    assert_redirected_to pass_categories_url
  end
end
