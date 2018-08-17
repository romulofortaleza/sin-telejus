require "application_system_test_case"

class JudgeauxesTest < ApplicationSystemTestCase
  setup do
    @judgeaux = judgeauxes(:one)
  end

  test "visiting the index" do
    visit judgeauxes_url
    assert_selector "h1", text: "Judgeauxes"
  end

  test "creating a Judgeaux" do
    visit judgeauxes_url
    click_on "New Judgeaux"

    fill_in "Code", with: @judgeaux.code
    fill_in "Judge Description", with: @judgeaux.judge_description
    fill_in "Judge Title", with: @judgeaux.judge_title
    fill_in "Last Update", with: @judgeaux.last_update
    fill_in "Organ", with: @judgeaux.organ
    click_on "Create Judgeaux"

    assert_text "Judgeaux was successfully created"
    click_on "Back"
  end

  test "updating a Judgeaux" do
    visit judgeauxes_url
    click_on "Edit", match: :first

    fill_in "Code", with: @judgeaux.code
    fill_in "Judge Description", with: @judgeaux.judge_description
    fill_in "Judge Title", with: @judgeaux.judge_title
    fill_in "Last Update", with: @judgeaux.last_update
    fill_in "Organ", with: @judgeaux.organ
    click_on "Update Judgeaux"

    assert_text "Judgeaux was successfully updated"
    click_on "Back"
  end

  test "destroying a Judgeaux" do
    visit judgeauxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Judgeaux was successfully destroyed"
  end
end
