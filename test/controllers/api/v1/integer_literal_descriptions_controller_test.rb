require 'test_helper'

class Api::V1::IntegerLiteralDescriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_integer_literal_descriptions_index_url
    assert_response :success
  end

end
