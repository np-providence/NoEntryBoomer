require 'test_helper'

class EnrolledUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enrolled_user = enrolled_users(:one)
  end

  test "should get index" do
    get enrolled_users_url
    assert_response :success
  end

  test "should get new" do
    get new_enrolled_user_url
    assert_response :success
  end

  test "should create enrolled_user" do
    assert_difference('EnrolledUser.count') do
      post enrolled_users_url, params: { enrolled_user: { name: @enrolled_user.name, photoEncoding: @enrolled_user.photoEncoding, userId: @enrolled_user.userId } }
    end

    assert_redirected_to enrolled_user_url(EnrolledUser.last)
  end

  test "should show enrolled_user" do
    get enrolled_user_url(@enrolled_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_enrolled_user_url(@enrolled_user)
    assert_response :success
  end

  test "should update enrolled_user" do
    patch enrolled_user_url(@enrolled_user), params: { enrolled_user: { name: @enrolled_user.name, photoEncoding: @enrolled_user.photoEncoding, userId: @enrolled_user.userId } }
    assert_redirected_to enrolled_user_url(@enrolled_user)
  end

  test "should destroy enrolled_user" do
    assert_difference('EnrolledUser.count', -1) do
      delete enrolled_user_url(@enrolled_user)
    end

    assert_redirected_to enrolled_users_url
  end
end
