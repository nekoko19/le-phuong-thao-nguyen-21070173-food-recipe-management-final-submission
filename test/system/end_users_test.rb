require "application_system_test_case"

class EndUsersTest < ApplicationSystemTestCase
  setup do
    @end_user = end_users(:one)
  end

  test "visiting the index" do
    visit end_users_url
    assert_selector "h1", text: "End users"
  end

  test "should create end user" do
    visit end_users_url
    click_on "New end user"

    fill_in "Date of birth", with: @end_user.date_of_birth
    fill_in "Email", with: @end_user.email
    fill_in "Username", with: @end_user.username
    click_on "Create End user"

    assert_text "End user was successfully created"
    click_on "Back"
  end

  test "should update End user" do
    visit end_user_url(@end_user)
    click_on "Edit this end user", match: :first

    fill_in "Date of birth", with: @end_user.date_of_birth
    fill_in "Email", with: @end_user.email
    fill_in "Username", with: @end_user.username
    click_on "Update End user"

    assert_text "End user was successfully updated"
    click_on "Back"
  end

  test "should destroy End user" do
    visit end_user_url(@end_user)
    click_on "Destroy this end user", match: :first

    assert_text "End user was successfully destroyed"
  end
end
