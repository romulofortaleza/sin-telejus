require "application_system_test_case"

class DutiesTest < ApplicationSystemTestCase
  setup do
    @duty = duties(:one)
  end

  test "visiting the index" do
    visit duties_url
    assert_selector "h1", text: "Duties"
  end

  test "creating a Duty" do
    visit duties_url
    click_on "New Duty"

    fill_in "File", with: @duty.file
    fill_in "Title", with: @duty.title
    click_on "Create Duty"

    assert_text "Duty was successfully created"
    click_on "Back"
  end

  test "updating a Duty" do
    visit duties_url
    click_on "Edit", match: :first

    fill_in "File", with: @duty.file
    fill_in "Title", with: @duty.title
    click_on "Update Duty"

    assert_text "Duty was successfully updated"
    click_on "Back"
  end

  test "destroying a Duty" do
    visit duties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Duty was successfully destroyed"
  end
end
