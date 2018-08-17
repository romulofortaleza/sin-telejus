require "application_system_test_case"

class ActivityRolesTest < ApplicationSystemTestCase
  setup do
    @activity_role = activity_roles(:one)
  end

  test "visiting the index" do
    visit activity_roles_url
    assert_selector "h1", text: "Activity Roles"
  end

  test "creating a Activity role" do
    visit activity_roles_url
    click_on "New Activity Role"

    fill_in "Activity", with: @activity_role.activity_id
    fill_in "Granted", with: @activity_role.granted
    fill_in "Role", with: @activity_role.role_id
    click_on "Create Activity role"

    assert_text "Activity role was successfully created"
    click_on "Back"
  end

  test "updating a Activity role" do
    visit activity_roles_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @activity_role.activity_id
    fill_in "Granted", with: @activity_role.granted
    fill_in "Role", with: @activity_role.role_id
    click_on "Update Activity role"

    assert_text "Activity role was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity role" do
    visit activity_roles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity role was successfully destroyed"
  end
end
