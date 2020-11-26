require 'test_helper'

class HelloVueControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hello_vue_index_url
    assert_response :success
  end

end
