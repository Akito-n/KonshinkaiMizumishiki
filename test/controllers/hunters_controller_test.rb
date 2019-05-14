require 'test_helper'

class HuntersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get hunters_show_url
    assert_response :success
  end

  test "should get index" do
    get hunters_index_url
    assert_response :success
  end

end
