require 'test_helper'

class TopUpControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get top_up_index_url
    assert_response :success
  end

  test "should get execute" do
    get top_up_execute_url
    assert_response :success
  end

end
