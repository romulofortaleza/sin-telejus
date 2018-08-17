require "application_system_test_case"

class ComponentCourtsTest < ApplicationSystemTestCase
  setup do
    @component_court = component_courts(:one)
  end

  test "visiting the index" do
    visit component_courts_url
    assert_selector "h1", text: "Component Courts"
  end

  test "creating a Component court" do
    visit component_courts_url
    click_on "New Component Court"

    fill_in "Code", with: @component_court.code
    fill_in "Composition", with: @component_court.composition
    fill_in "Last Update", with: @component_court.last_update
    fill_in "Organ", with: @component_court.organ
    fill_in "Public Defender", with: @component_court.public_defender
    click_on "Create Component court"

    assert_text "Component court was successfully created"
    click_on "Back"
  end

  test "updating a Component court" do
    visit component_courts_url
    click_on "Edit", match: :first

    fill_in "Code", with: @component_court.code
    fill_in "Composition", with: @component_court.composition
    fill_in "Last Update", with: @component_court.last_update
    fill_in "Organ", with: @component_court.organ
    fill_in "Public Defender", with: @component_court.public_defender
    click_on "Update Component court"

    assert_text "Component court was successfully updated"
    click_on "Back"
  end

  test "destroying a Component court" do
    visit component_courts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Component court was successfully destroyed"
  end
end
