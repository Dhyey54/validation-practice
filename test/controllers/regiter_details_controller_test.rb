require "test_helper"

class RegiterDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get regiter_details_index_url
    assert_response :success
  end
end
