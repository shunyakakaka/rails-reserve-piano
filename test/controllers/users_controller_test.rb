require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get index_create_url
    assert_response :success
  end

  test "should get show" do
    get index_show_url
    assert_response :success
  end

  test "should get edit" do
    get index_edit_url
    assert_response :success
  end

  test "should get destory" do
    get index_destory_url
    assert_response :success
  end

end
