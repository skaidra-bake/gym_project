require "application_system_test_case"

class OneDayPassesTest < ApplicationSystemTestCase
  setup do
    @one_day_pass = one_day_passes(:one)
  end

  test "visiting the index" do
    visit one_day_passes_url
    assert_selector "h1", text: "One Day Passes"
  end

  test "creating a One day pass" do
    visit one_day_passes_url
    click_on "New One Day Pass"

    fill_in "Date", with: @one_day_pass.date
    fill_in "Member", with: @one_day_pass.member_id
    click_on "Create One day pass"

    assert_text "One day pass was successfully created"
    click_on "Back"
  end

  test "updating a One day pass" do
    visit one_day_passes_url
    click_on "Edit", match: :first

    fill_in "Date", with: @one_day_pass.date
    fill_in "Member", with: @one_day_pass.member_id
    click_on "Update One day pass"

    assert_text "One day pass was successfully updated"
    click_on "Back"
  end

  test "destroying a One day pass" do
    visit one_day_passes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "One day pass was successfully destroyed"
  end
end
