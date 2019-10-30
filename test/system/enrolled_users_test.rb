require "application_system_test_case"

class EnrolledUsersTest < ApplicationSystemTestCase
  setup do
    @enrolled_user = enrolled_users(:one)
  end

  test "visiting the index" do
    visit enrolled_users_url
    assert_selector "h1", text: "Enrolled Users"
  end

  test "creating a Enrolled user" do
    visit enrolled_users_url
    click_on "New Enrolled User"

    fill_in "Name", with: @enrolled_user.name
    fill_in "Photoencoding", with: @enrolled_user.photoEncoding
    fill_in "Userid", with: @enrolled_user.userId
    click_on "Create Enrolled user"

    assert_text "Enrolled user was successfully created"
    click_on "Back"
  end

  test "updating a Enrolled user" do
    visit enrolled_users_url
    click_on "Edit", match: :first

    fill_in "Name", with: @enrolled_user.name
    fill_in "Photoencoding", with: @enrolled_user.photoEncoding
    fill_in "Userid", with: @enrolled_user.userId
    click_on "Update Enrolled user"

    assert_text "Enrolled user was successfully updated"
    click_on "Back"
  end

  test "destroying a Enrolled user" do
    visit enrolled_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enrolled user was successfully destroyed"
  end
end
