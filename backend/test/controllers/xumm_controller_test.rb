require "test_helper"

class XummControllerTest < ActionDispatch::IntegrationTest
  test "should get create_payload" do
    get xumm_create_payload_url
    assert_response :success
  end
end
