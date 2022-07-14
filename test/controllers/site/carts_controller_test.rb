require "test_helper"

class Site::CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_carts_index_url
    assert_response :success
  end
end
