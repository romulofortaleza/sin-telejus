require "application_system_test_case"

class SticksTest < ApplicationSystemTestCase
  setup do
    @stick = sticks(:one)
  end

  test "visiting the index" do
    visit sticks_url
    assert_selector "h1", text: "Sticks"
  end

  test "creating a Stick" do
    visit sticks_url
    click_on "New Stick"

    fill_in "Address", with: @stick.address
    fill_in "Circumscription", with: @stick.circumscription
    fill_in "Code", with: @stick.code
    fill_in "Curation", with: @stick.curation
    fill_in "Horary", with: @stick.horary
    fill_in "Judge", with: @stick.judge
    fill_in "Last Date", with: @stick.last_date
    fill_in "Organ", with: @stick.organ
    fill_in "Phones", with: @stick.phones
    fill_in "Promoter", with: @stick.promoter
    fill_in "Public Defensor", with: @stick.public_defensor
    click_on "Create Stick"

    assert_text "Stick was successfully created"
    click_on "Back"
  end

  test "updating a Stick" do
    visit sticks_url
    click_on "Edit", match: :first

    fill_in "Address", with: @stick.address
    fill_in "Circumscription", with: @stick.circumscription
    fill_in "Code", with: @stick.code
    fill_in "Curation", with: @stick.curation
    fill_in "Horary", with: @stick.horary
    fill_in "Judge", with: @stick.judge
    fill_in "Last Date", with: @stick.last_date
    fill_in "Organ", with: @stick.organ
    fill_in "Phones", with: @stick.phones
    fill_in "Promoter", with: @stick.promoter
    fill_in "Public Defensor", with: @stick.public_defensor
    click_on "Update Stick"

    assert_text "Stick was successfully updated"
    click_on "Back"
  end

  test "destroying a Stick" do
    visit sticks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stick was successfully destroyed"
  end
end
