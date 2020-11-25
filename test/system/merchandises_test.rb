require "application_system_test_case"

class MerchandisesTest < ApplicationSystemTestCase
  setup do
    @merchandise = merchandises(:one)
  end

  test "visiting the index" do
    visit merchandises_url
    assert_selector "h1", text: "Merchandises"
  end

  test "creating a Merchandise" do
    visit merchandises_url
    click_on "New Merchandise"

    fill_in "Name", with: @merchandise.name
    fill_in "Price", with: @merchandise.price
    click_on "Create Merchandise"

    assert_text "Merchandise was successfully created"
    click_on "Back"
  end

  test "updating a Merchandise" do
    visit merchandises_url
    click_on "Edit", match: :first

    fill_in "Name", with: @merchandise.name
    fill_in "Price", with: @merchandise.price
    click_on "Update Merchandise"

    assert_text "Merchandise was successfully updated"
    click_on "Back"
  end

  test "destroying a Merchandise" do
    visit merchandises_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Merchandise was successfully destroyed"
  end
end
