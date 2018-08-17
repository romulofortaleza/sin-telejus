require "application_system_test_case"

class AddressOrgansTest < ApplicationSystemTestCase
  setup do
    @address_organ = address_organs(:one)
  end

  test "visiting the index" do
    visit address_organs_url
    assert_selector "h1", text: "Address Organs"
  end

  test "creating a Address organ" do
    visit address_organs_url
    click_on "New Address Organ"

    fill_in "Address", with: @address_organ.address
    fill_in "Code", with: @address_organ.code
    fill_in "Email", with: @address_organ.email
    fill_in "Last Update", with: @address_organ.last_update
    fill_in "Name", with: @address_organ.name
    fill_in "Organ", with: @address_organ.organ
    fill_in "Phone", with: @address_organ.phone
    fill_in "Type", with: @address_organ.type
    click_on "Create Address organ"

    assert_text "Address organ was successfully created"
    click_on "Back"
  end

  test "updating a Address organ" do
    visit address_organs_url
    click_on "Edit", match: :first

    fill_in "Address", with: @address_organ.address
    fill_in "Code", with: @address_organ.code
    fill_in "Email", with: @address_organ.email
    fill_in "Last Update", with: @address_organ.last_update
    fill_in "Name", with: @address_organ.name
    fill_in "Organ", with: @address_organ.organ
    fill_in "Phone", with: @address_organ.phone
    fill_in "Type", with: @address_organ.type
    click_on "Update Address organ"

    assert_text "Address organ was successfully updated"
    click_on "Back"
  end

  test "destroying a Address organ" do
    visit address_organs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Address organ was successfully destroyed"
  end
end
