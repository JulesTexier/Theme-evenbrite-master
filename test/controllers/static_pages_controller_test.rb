require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get qui-sommes-nous" do
    get static_pages_qui-sommes-nous_url
    assert_response :success
  end

end
