require 'test_helper'

class Admin::MailsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_mails_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_mails_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_mails_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_mails_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_mails_destroy_url
    assert_response :success
  end

  test "should get index" do
    get admin_mails_index_url
    assert_response :success
  end

end
