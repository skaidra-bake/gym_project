require "application_system_test_case"

class PassCategoriesTest < ApplicationSystemTestCase
  setup do
    @pass_category = pass_categories(:one)
  end

  test "visiting the index" do
    visit pass_categories_url
    assert_selector "h1", text: "Pass Categories"
  end

  test "creating a Pass category" do
    visit pass_categories_url
    click_on "New Pass Category"

    fill_in "Name", with: @pass_category.name
    fill_in "Price", with: @pass_category.price
    click_on "Create Pass category"

    assert_text "Pass category was successfully created"
    click_on "Back"
  end

  test "updating a Pass category" do
    visit pass_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @pass_category.name
    fill_in "Price", with: @pass_category.price
    click_on "Update Pass category"

    assert_text "Pass category was successfully updated"
    click_on "Back"
  end

  test "destroying a Pass category" do
    visit pass_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pass category was successfully destroyed"
  end
end
