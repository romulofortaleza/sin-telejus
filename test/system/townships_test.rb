require "application_system_test_case"

class TownshipsTest < ApplicationSystemTestCase
  setup do
    @township = townships(:one)
  end

  test "visiting the index" do
    visit townships_url
    assert_selector "h1", text: "Townships"
  end

  test "creating a Township" do
    visit townships_url
    click_on "New Township"

    fill_in "Address", with: @township.address
    fill_in "Assistant", with: @township.assistant
    fill_in "Code", with: @township.code
    fill_in "Componentsj", with: @township.componentsj
    fill_in "District", with: @township.district
    fill_in "Entrance", with: @township.entrance
    fill_in "Forum", with: @township.forum
    fill_in "Judicial Districts", with: @township.judicial_districts
    fill_in "Last Update", with: @township.last_update
    fill_in "Nucleus", with: @township.nucleus
    fill_in "Phone", with: @township.phone
    fill_in "Promoter Change", with: @township.promoter_change
    fill_in "Promoter Owner", with: @township.promoter_owner
    fill_in "Public Defender", with: @township.public_defender
    fill_in "Relantionship", with: @township.relantionship
    fill_in "Responsiblej", with: @township.responsiblej
    fill_in "Supervisor", with: @township.supervisor
    fill_in "Team", with: @township.team
    fill_in "Titular Jugde", with: @township.titular_jugde
    click_on "Create Township"

    assert_text "Township was successfully created"
    click_on "Back"
  end

  test "updating a Township" do
    visit townships_url
    click_on "Edit", match: :first

    fill_in "Address", with: @township.address
    fill_in "Assistant", with: @township.assistant
    fill_in "Code", with: @township.code
    fill_in "Componentsj", with: @township.componentsj
    fill_in "District", with: @township.district
    fill_in "Entrance", with: @township.entrance
    fill_in "Forum", with: @township.forum
    fill_in "Judicial Districts", with: @township.judicial_districts
    fill_in "Last Update", with: @township.last_update
    fill_in "Nucleus", with: @township.nucleus
    fill_in "Phone", with: @township.phone
    fill_in "Promoter Change", with: @township.promoter_change
    fill_in "Promoter Owner", with: @township.promoter_owner
    fill_in "Public Defender", with: @township.public_defender
    fill_in "Relantionship", with: @township.relantionship
    fill_in "Responsiblej", with: @township.responsiblej
    fill_in "Supervisor", with: @township.supervisor
    fill_in "Team", with: @township.team
    fill_in "Titular Jugde", with: @township.titular_jugde
    click_on "Update Township"

    assert_text "Township was successfully updated"
    click_on "Back"
  end

  test "destroying a Township" do
    visit townships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Township was successfully destroyed"
  end
end
