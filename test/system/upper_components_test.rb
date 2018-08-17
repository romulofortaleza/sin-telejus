require "application_system_test_case"

class UpperComponentsTest < ApplicationSystemTestCase
  setup do
    @upper_component = upper_components(:one)
  end

  test "visiting the index" do
    visit upper_components_url
    assert_selector "h1", text: "Upper Components"
  end

  test "creating a Upper component" do
    visit upper_components_url
    click_on "New Upper Component"

    fill_in "Address", with: @upper_component.address
    fill_in "Composition", with: @upper_component.composition
    fill_in "Last Update", with: @upper_component.last_update
    fill_in "Organ", with: @upper_component.organ
    click_on "Create Upper component"

    assert_text "Upper component was successfully created"
    click_on "Back"
  end

  test "updating a Upper component" do
    visit upper_components_url
    click_on "Edit", match: :first

    fill_in "Address", with: @upper_component.address
    fill_in "Composition", with: @upper_component.composition
    fill_in "Last Update", with: @upper_component.last_update
    fill_in "Organ", with: @upper_component.organ
    click_on "Update Upper component"

    assert_text "Upper component was successfully updated"
    click_on "Back"
  end

  test "destroying a Upper component" do
    visit upper_components_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Upper component was successfully destroyed"
  end
end
